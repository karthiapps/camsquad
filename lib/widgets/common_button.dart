import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';



class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key,required this.txt,required this.onTab}) : super(key: key);

  final String txt;
  final Function() onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        height: 54,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColor.primaryColor,),
        child: Text(
          txt,
          style: kTextStyle16.copyWith(color: Colors.white,letterSpacing: 1),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({Key? key,required this.txt,required this.onTab}) : super(key: key);

  final String txt;
  final Function() onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        height: 54,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColor.secondaryColor,),
        child: Text(
          txt,
          style: kTextStyle16.copyWith(color: Colors.white,letterSpacing: 1),
        ),
      ),
    );
  }
}
