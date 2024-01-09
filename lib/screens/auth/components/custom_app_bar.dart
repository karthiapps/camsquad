import 'package:camsquad/src/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../theme/app_color.dart';
import '../../../theme/app_theme.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.txt});

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: (){
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(AssetData.icBack,width: 36,height: 29,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Center(
              child: Text(txt,style: kTextStyle20.copyWith(color: AppColor.textColor2),)
          ),
        )
      ],
    );
  }
}
