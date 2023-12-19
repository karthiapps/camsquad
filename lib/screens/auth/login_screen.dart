import 'package:camsquad/controllers/login_controller.dart';
import 'package:camsquad/screens/auth/password_reset_screen.dart';
import 'package:camsquad/screens/auth/signup_screen.dart';
import 'package:camsquad/src/animations.dart';
import 'package:camsquad/src/size_config.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../shared/enum.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_textfield.dart';
import '../home/home_screen.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _ctr = Get.put(LoginController());
  TextEditingController ddd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Obx(() =>
              Container(
                color: Colors.white,
                child: Lottie.asset(_ctr.animatePath.value),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: SizeConfig.screenHeight! * 0.60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(51),topLeft: Radius.circular(51)),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.darkGrayColor.withOpacity(0.25),
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: const Offset(0,-6)
                    )
                  ]
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 52),
                  child: Column(
                    children: [
                      const SizedBox(height: 40,),
                      CommonOutlineTextField(
                        readOnly: false,
                        txt: "Email/ Phone number",
                        ctr: ddd,
                        textInputType: TextInputType.text,
                        onChanged: (_){
                          _ctr.updateType(LoginType.typing);
                        },
                        onEditingComplete: (){
                          _ctr.updateType(LoginType.idel);
                        },
                      ),
                      const SizedBox(height: 15,),
                      CommonOutlinePasswordField(
                        readOnly: false,
                        txt: "Password",
                        textInputType: TextInputType.visiblePassword,
                        onChanged: (_){
                          _ctr.updateType(LoginType.typingpassword);
                        },
                        onEditingComplete: (){
                          _ctr.updateType(LoginType.idel);
                        },
                      ),
                      const SizedBox(height: 15,),
                      PrimaryButton(
                        txt: "Sign In",
                        onTab: () => _ctr.signInSubmit(),
                      ),
                      const SizedBox(height: 15,),
                      InkWell(
                        onTap: (){
                          Get.to(const SignUpScreen());
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don’t have an account ? ",style: kTextStyle12.copyWith(color: AppColor.textColor1),),
                              Text("Sign up",style: kTextStyle12.copyWith(color: AppColor.secondaryColor),),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      InkWell(
                        onTap: (){
                          Get.to(const PasswordRestScreen());
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Forgot Password?",style: kTextStyle12.copyWith(color: AppColor.textColor2),),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      SecondaryButton(
                        txt: "PickPicz.com",
                        onTab: (){},
                      ),
                      InkWell(
                        onTap: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("You can Login with ",style: kTextStyle12.copyWith(color: AppColor.textColor1),),
                              Text("PickPicz.com ",style: kTextStyle12.copyWith(color: AppColor.textColor1,fontWeight: FontWeight.w700),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
