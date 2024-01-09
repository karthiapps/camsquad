import 'dart:convert';
import 'package:camsquad/models/login_model.dart';
import 'package:camsquad/services/auth/auth.dart';
import 'package:camsquad/src/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../controllers/home_controller.dart';
import '../../services/network/api_service.dart';
import '../../src/size_config.dart';
import '../../utils/shared_preference_local_storage.dart';
import '../auth/login_screen.dart';
import '../home/custom_bottomview.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  void navigate() async{
    await Future.delayed(const Duration(milliseconds: 3500));
    await SharedPreferenceLocalStorage.init();
    var token = await SharedPreferenceLocalStorage.getToken();
    var loggedData = await SharedPreferenceLocalStorage.getLoginInfo();
    final ctr = Get.put(HomeController());
    if(token!.isNotEmpty){
      ApiService.init();
      ctr.loginModel = LoginModel.fromJson(jsonDecode(loggedData!));
      Get.to(() => CustomBottomView());
    }else{
      Get.to(() => LoginScreen());
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Lottie.asset(AnimateData.splashScreen)
    );
  }
}
