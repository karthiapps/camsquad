import 'dart:convert';
import 'package:get/get.dart';
import '../models/login_model.dart';
import '../screens/home/custom_bottomview.dart';
import '../services/auth/auth.dart';
import '../shared/enum.dart';
import '../src/animations.dart';
import 'package:flutter/material.dart';
import '../utils/shared_preference_local_storage.dart';
import '../widgets/common_widget.dart';
import 'home_controller.dart';
import 'package:dio/dio.dart' as DioApi;

class LoginController extends GetxController{

  var animatePath = AnimateData.loginIdleAnimate.obs;



  final TextEditingController userCtr = TextEditingController(text: "balvannanathan@gmail.com");
  final TextEditingController passwordCtr = TextEditingController(text: "Balu.1234");

  signInSubmit(BuildContext context) async{

    if (!_isValidate()) {
      return false;
    }
    onLoading();
    var res =  await AuthService().loginUser(
      user: userCtr.text.toString(),
      password: passwordCtr.text.toString(),
    );
    if(res){
      animatePath.value = AnimateData.loginSuccessAnimate;
      Future.delayed(const Duration(seconds: 2),(){
        Get.to(() => CustomBottomView());
      });
    }
  }



  void updateType(LoginType value){
    if(value == LoginType.typing){
      animatePath.value = AnimateData.loginTypingAnimate;
    }else if(value == LoginType.typingpassword){
      animatePath.value = AnimateData.loginTypingPasswordAnimate;
    }else if(value == LoginType.wrongpassword){
      animatePath.value = AnimateData.loginWrongPassword;
    }else if(value == LoginType.success){
      animatePath.value = AnimateData.loginSuccessAnimate;
    }else{
      animatePath.value = AnimateData.loginIdleAnimate;
    }
  }

  bool _isValidate() {
    var user = userCtr.text.toString();
    var password = passwordCtr.text.toString();

    if (user.isEmpty) {
      SnackBars.showAlertSnackBar(
        text: "Email/Phone number is required",
      );
      return false;
    }else if (password.isEmpty) {
      SnackBars.showAlertSnackBar(
        text: "Password is required",
      );
      return false;
    }
    return true;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}