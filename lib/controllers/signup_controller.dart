import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../models/login_model.dart';
import '../screens/home/custom_bottomview.dart';
import '../services/auth/auth.dart';
import '../utils/shared_preference_local_storage.dart';
import '../widgets/common_widget.dart';
import 'home_controller.dart';



class SignUpController extends GetxController{

  final TextEditingController nameCtr = TextEditingController(text: "");
  final TextEditingController emailCtr = TextEditingController(text: "");
  final TextEditingController phoneCtr = TextEditingController(text: "");
  final TextEditingController dobCtr = TextEditingController(text: "");
  final TextEditingController passwordCtr = TextEditingController(text: "");
  RxBool isVisiblePassword = false.obs;

  DateTime? dobDate = DateTime.now();
  final DateFormat formatter = DateFormat('dd-MM-yyyy');

  signUpSubmit() async{

    if (!_isValidate()) {
      return false;
    }

    var res =  await AuthService().signUpUser(
      name: nameCtr.text.toString(),
      email: emailCtr.text.toString(),
      password: passwordCtr.text.toString(),
      dob: dobCtr.text.toString(),
      phone: phoneCtr.text.toString()
    );

    if(res){
      // var loggedData = await SharedPreferenceLocalStorage.getLoginInfo();
      // LoginModel loginModel = LoginModel.fromJson(jsonDecode(loggedData!));
      // Get.put(HomeController(data: loginModel));
      // Get.to(() => CustomBottomView());
    }
  }

  bool _isValidate() {
    var name = nameCtr.text;
    var email = emailCtr.text;
    var phone = phoneCtr.text;
    var dob = dobCtr.text;
    var password = passwordCtr.text;

    if (name.isEmpty) {
      SnackBars.showAlertSnackBar(
        text: "Name is required",
      );
      return false;
    }else if (email.isEmpty) {
      SnackBars.showAlertSnackBar(
        text: "Email is required",
      );
      return false;
    }else if (phone.isEmpty) {
      SnackBars.showAlertSnackBar(
        text: "Phone number is required",
      );
      return false;
    }else if (dob.isEmpty) {
      SnackBars.showAlertSnackBar(
        text: "Date of Birth is required",
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

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: dobDate,
        firstDate: DateTime(1900, 0),
        lastDate: DateTime.now(),
    );
    if (picked != null && picked != dobDate) {
        dobDate = picked;
        dobCtr.text = formatter.format(dobDate!);
    }
  }

}