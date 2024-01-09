import 'package:camsquad/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../src/animations.dart';
import '../theme/app_color.dart';
import 'package:flutter/material.dart';

class SnackBars {

  static showAlertSnackBar({required text}) {
    if(Get.isOverlaysOpen) Get.close(1);
    return Get.rawSnackbar(
      message: text,
      backgroundColor: AppColor.blueGrayColor,
      snackStyle: SnackStyle.GROUNDED,
      margin: EdgeInsets.zero,
      snackPosition: SnackPosition.BOTTOM,
      messageText: Text(text,style: kTextStyle16.copyWith(color: Colors.white,fontWeight: FontWeight.w400),),
    );
  }
  static showErrorSnackBar({required text}) {
    if(Get.isOverlaysOpen) Get.close(1);
    return Get.rawSnackbar(
      message: text,
      backgroundColor: Colors.red.shade500,
      snackStyle: SnackStyle.GROUNDED,
      margin: EdgeInsets.zero,
      snackPosition: SnackPosition.BOTTOM,
      messageText: Text(text,style: kTextStyle16.copyWith(color: Colors.white,fontWeight: FontWeight.w400),),
    );
  }
  static showSuccessSnackBar({required text}) {
    if(Get.isOverlaysOpen) Get.close(1);
    return Get.rawSnackbar(
      message: text,
      backgroundColor: Colors.green.shade500,
      snackStyle: SnackStyle.GROUNDED,
      margin: EdgeInsets.zero,
      snackPosition: SnackPosition.BOTTOM,
      messageText: Text(text,style: kTextStyle16.copyWith(color: Colors.white,fontWeight: FontWeight.w400),),
    );
  }
}
void onLoading(){
  Get.dialog(Lottie.asset(AnimateData.loading));
  // showDialog(context: Get.context!,barrierDismissible: false,builder: (BuildContext context){
  //   return Lottie.asset(AnimateData.loading);
  // });
}