import 'package:camsquad/screens/home/home_screen.dart';
import 'package:get/get.dart';
import '../shared/enum.dart';
import '../src/animations.dart';

class LoginController extends GetxController{

  var animatePath = AnimateData.loginIdleAnimate.obs;



  void signInSubmit(){
    animatePath.value = AnimateData.loginSuccessAnimate;
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(HomeScreen());
    });
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