import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:camsquad/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'components/custom_app_bar.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60,),
            const CustomAppBar(
              txt: "Sign Up",
            ),
           Container(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const SizedBox(height: 60,),
                 Text("OTP\nVerification",style: kTextStyle40.copyWith(color: AppColor.primaryColor),),
                 const SizedBox(height: 20,),
                 Text("OTP sent to your mobile number",style: kTextStyle16.copyWith(color: AppColor.textColor3),),
                 Text("+91 83448 84448",style: kTextStyle16.copyWith(color: AppColor.textColor3,fontWeight: FontWeight.w700),),
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
                 const SizedBox(height: 40,),
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
                 const SizedBox(height: 60,),
                 PrimaryButton(
                     txt: "Verify",
                     onTab: (){}
                 ),
                 const SizedBox(height: 40,),
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
