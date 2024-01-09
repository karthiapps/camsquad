import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../src/images.dart';



class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key,required this.txt,required this.onTab}) : super(key: key);

  final String txt;
  final Function() onTab;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.primaryColor,
      borderRadius:BorderRadius.circular(15),
      child: InkWell(
        onTap: onTab,
        splashColor: Colors.black.withOpacity(0.2),
        highlightColor: AppColor.primaryDarkColor,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          alignment: Alignment.center,
          height: 54,
          padding: const EdgeInsets.all(15),
          child: Text(
            txt,
            style: kTextStyle16.copyWith(color: Colors.white,letterSpacing: 1),
          ),
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
    return Material(
      color: AppColor.secondaryColor,
      borderRadius:BorderRadius.circular(15),
      child: InkWell(
        onTap: onTab,
        splashColor: Colors.black.withOpacity(0.2),
        highlightColor: AppColor.secondaryDarkColor,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          alignment: Alignment.center,
          height: 54,
          padding: const EdgeInsets.all(15),
          child: Text(
            txt,
            style: kTextStyle16.copyWith(color: Colors.white,letterSpacing: 1),
          ),
        ),
      ),
    );
  }
}

class BackIconButton extends StatelessWidget {
  const BackIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.back();
      },
      child: Container(
        padding: const EdgeInsets.all(12.0),
        alignment: Alignment.centerLeft,
        child: SvgPicture.asset(AssetData.icBackW,height: 25,width: 25,),
      ),
    );
  }
}
class BackIconButtonBlack extends StatelessWidget {
  const BackIconButtonBlack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.back();
      },
      child: Container(
        padding: const EdgeInsets.all(12.0),
        alignment: Alignment.centerLeft,
        child: SvgPicture.asset(AssetData.icBackW,height: 25,width: 25,color: Colors.black,),
      ),
    );
  }
}
