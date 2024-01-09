import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:camsquad/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import '../../widgets/common_textfield.dart';
import 'components/custom_app_bar.dart';


class PasswordRestScreen extends StatelessWidget {
  const PasswordRestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60,),
              const CustomAppBar(
                txt: "Password Reset",
              ),
             Container(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const SizedBox(height: 20,),
                   Text("Email OTP",style: kTextStyle40.copyWith(color: AppColor.primaryColor),),
                   const SizedBox(height: 20,),
                   Text("OTP sent to your register email id",style: kTextStyle16.copyWith(color: AppColor.textColor3),),
                   Text("ranjith@gmail.com",style: kTextStyle16.copyWith(color: AppColor.textColor3,fontWeight: FontWeight.w700),),
                   OTPTextField(
                     length : 4,
                     keyboardType: TextInputType.number,
                     textFieldAlignment: MainAxisAlignment.center,
                     fieldStyle: FieldStyle.underline,
                     style: kTextStyle24.copyWith(fontWeight: FontWeight.bold),
                     spaceBetween: 10,
                     obscureText: false,
                     contentPadding: const EdgeInsets.all(16),
                     width: double.infinity,
                     fieldWidth: 60,
                     otpFieldStyle: OtpFieldStyle(
                       backgroundColor: Colors.transparent,
                       borderColor: AppColor.primaryColor,
                       enabledBorderColor: AppColor.underLineColor,
                       disabledBorderColor: AppColor.primaryColor,
                       errorBorderColor: AppColor.primaryColor,
                       focusBorderColor: AppColor.primaryColor,
                     ),
                     onChanged: (String verificationCode) {
          
                     },
                     onCompleted: (String verificationCode) {},
                   ),
                   const SizedBox(height: 30,),
                   InkWell(
                     onTap: (){},
                     child: Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("Didn't you receive the OTP? ",style: kTextStyle14.copyWith(color: AppColor.textColor1),),
                           Text("Resend OTP",style: kTextStyle14.copyWith(color: AppColor.secondaryColor,fontWeight: FontWeight.w700),),
                         ],
                       ),
                     ),
                   ),
                   const SizedBox(height: 20,),
                   Text("New Password",style: kTextStyle40.copyWith(color: AppColor.primaryColor)),
                   const SizedBox(height: 10,),
                   Text("Type your new password",style: kTextStyle14.copyWith(color: AppColor.textColor3,fontWeight: FontWeight.w700),),
                   const SizedBox(height: 30,),
                   CommonPasswordField(
                     txt: "New Password",
                     textInputType: TextInputType.visiblePassword,
                     readOnly: false,
                     onTab: (){},
                     obscureText: true,
                     icnSuffixOnTab: (){},
                   ),
                   const SizedBox(height: 10,),
                   CommonPasswordField(
                     txt: "Confirm Password",
                     textInputType: TextInputType.visiblePassword,
                     readOnly: false,
                     obscureText: true,
                     icnSuffixOnTab: (){},
                   ),
                   const SizedBox(height: 20,),
                   PrimaryButton(
                       txt: "Update",
                       onTab: (){}
                   ),
                   const SizedBox(height: 20,),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
