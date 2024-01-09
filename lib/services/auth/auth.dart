import 'dart:convert';

import 'package:get/get.dart';
import '../../controllers/home_controller.dart';
import '../../models/login_model.dart';
import '../../widgets/common_widget.dart';
import '../network/api_service.dart';

class AuthService {

  loginUser({required String user,required String password}) async {
      var data = {
        "email":user,
        "password":password
      };
      var response = await ApiService.loginUser(data: data);
      if(response == false){
        return false;
      }else{
        if (response['status']) {

          Get.find<HomeController>().loginModel = LoginModel.fromJson(response['profile']);
          SnackBars.showSuccessSnackBar(
            text: response['message'],
          );
          return true;
        } else{
          SnackBars.showErrorSnackBar(
            text: response['message'],
          );
          return false;
        }
      }
  }
  signUpUser({required String name,required String email,
    required String password,required String phone,
    required String dob}) async {
    try {
      var data = {
        "name":name,
        "email":email,
        "password":password,
        "phone":phone,
        "dob":dob
      };
      final response = await ApiService.signUpUser(data: data);
      if (response != null) {
        if (response['status']) {
          SnackBars.showSuccessSnackBar(
            text: response['message'],
          );
          return true;
        } else{
          SnackBars.showErrorSnackBar(
            text: response['message'],
          );
          return false;
        }
      }else{
        return false;
      }
    } catch (e) {
      printError(info: e.toString());
      SnackBars.showErrorSnackBar(
        text: e.toString(),
      );
      return false;
    }
  }
}