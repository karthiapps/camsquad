import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as DioApi;
import '../../constant/dio_errors.dart';
import '../../main.dart';
import '../../screens/initial/splash_screen.dart';
import '../../utils/shared_preference_local_storage.dart';
import '../../widgets/common_widget.dart';
import 'api_endpoint.dart';

class ApiService{

  static late Dio _dio;

  static void init() async {
    try {
      var accessToken = await SharedPreferenceLocalStorage.getToken();
      var options = BaseOptions(
        baseUrl: ApiEndpoint.hostURL,
        followRedirects: false,
      );
      _dio = Dio(options);
      _dio.options.headers["Authorization"] =
          "Bearer $accessToken";
      _dio.options.headers["Accept"] =
      "application/json";
    } catch (e) {
      return;
    }
  }

  static Future<dynamic> loginUser({data}) async {

    try{
      DioApi.Response response;
      var dio = DioApi.Dio();
      dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };
      dio.options.validateStatus = (statusCode){
        if(statusCode == null){
          return false;
        }
        if(statusCode == 422){
          return true;
        }else{
          return statusCode >= 200 && statusCode < 300;
        }
      };
      response = await dio.post(ApiEndpoint.hostURL+ApiEndpoint.login, data: data);
      if(response.statusCode == 200 &&  response.data['status']){
        await SharedPreferenceLocalStorage.setToken(response.data['token'].toString());
        await SharedPreferenceLocalStorage.setLoginInfo(jsonEncode(response.data['profile']));
        init();
      }else if(response.statusCode == 422){
        SnackBars.showErrorSnackBar(
          text:response.data['message'],
        );
        return false;
      }
      return response.data;
    }on DioException catch(e){
      if(e.type == DioExceptionType.connectionError){
        SnackBars.showErrorSnackBar(
          text:"Please check your internet connection",
        );
      }
      return false;
    }on SocketException catch(e){
      SnackBars.showErrorSnackBar(
        text:"No Internet Connection",
      );
      return false;
    }
  }

  static Future<dynamic> postRequest({
    required endpoint,
    param = const {"": ""},
  }) async {
    try {
      DioApi.Response response = await _dio.post(endpoint, data: param);
      return response;
    } on DioException catch (err) {
      return null;
    }
  }

  static Future<dynamic> getRequest({endpoint, param = const {"": ""}}) async {
    try {
      final response = await _dio.get(endpoint, queryParameters: param);
      return response;
    } on DioException catch (err) {
      return null;
    }
  }

  static Future<dynamic> signUpUser({data}) async {

    DioApi.Response response;
    var dio = DioApi.Dio();
    dio.options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    response = await dio.post(ApiEndpoint.hostURL+ApiEndpoint.signUp, data: data);
    var res = response.data;
    if(res['status']){
      await SharedPreferenceLocalStorage.setToken(res['token'].toString());
      await SharedPreferenceLocalStorage.setLoginInfo(jsonEncode(res['profile']));
      init();
    }
    return res;
  }
}