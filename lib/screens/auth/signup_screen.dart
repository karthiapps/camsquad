import 'package:camsquad/src/images.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:camsquad/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../controllers/signup_controller.dart';
import '../../theme/app_color.dart';
import '../../widgets/common_textfield.dart';
import 'package:get/get.dart';
import 'otp_screen.dart';


class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _ctr = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50,),
              Center(child: SvgPicture.asset(AssetData.logoImg,width: 260,)),
              const SizedBox(height: 20,),
              Text("Sign Up",style: kTextStyle20,),
              const SizedBox(height: 20,),
              CommonTextField(
                txt: "Name",
                textInputType: TextInputType.name,
                ctr: _ctr.nameCtr,
                readOnly: false,
              ),
              const SizedBox(height: 15,),
              CommonTextField(
                txt: "Email",
                textInputType: TextInputType.emailAddress,
                ctr: _ctr.emailCtr,
                readOnly: false,
              ),
              const SizedBox(height: 15,),
              CommonPhoneField(
                txt: "Phone Number",
                textInputType: TextInputType.phone,
                ctr: _ctr.phoneCtr,
                readOnly: false,
              ),
              const SizedBox(height: 15,),
              CommonTextField(
                txt: "Date of Birth",
                textInputType: TextInputType.text,
                ctr: _ctr.dobCtr,
                readOnly: true,
                onTab: (){
                  _ctr.selectDate(context);
                },
              ),
              const SizedBox(height: 15,),
              Obx(() =>
               CommonPasswordField(
                  txt: "Password",
                  textInputType: TextInputType.visiblePassword,
                  readOnly: false,
                 obscureText: _ctr.isVisiblePassword.value,
                  ctr: _ctr.passwordCtr,
                  icnSuffix: _ctr.isVisiblePassword.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                  icnSuffixOnTab: (){
                    if(_ctr.isVisiblePassword.value){
                      _ctr.isVisiblePassword.value = false;
                    }else{
                      _ctr.isVisiblePassword.value = true;
                    }
                  },
                ),
              ),
              const SizedBox(height: 25,),
              PrimaryButton(
                  txt: "Sign Up",
                  onTab: (){
                    Get.to(const OtpScreen());
                  }
              ),
              const SizedBox(height: 15,),
              InkWell(
                onTap: (){
                 Get.back();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("I have an account ",style: kTextStyle12.copyWith(color: AppColor.textColor1),),
                      Text("Sign In",style: kTextStyle12.copyWith(color: AppColor.secondaryColor),),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
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
    );
  }
}
