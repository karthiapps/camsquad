import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../src/images.dart';
import '../theme/app_color.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({super.key,required this.body,required this.title,required this.isBack});

  final Widget body;
  final bool isBack;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgBoxColor,
      appBar: AppBar(
          backgroundColor:AppColor.primaryColor,
          title: Text(title,style: kTextStyle18.copyWith(color: Colors.white),),
          centerTitle: true,
          leading: isBack ? Container(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){
                Get.back();
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: SvgPicture.asset(AssetData.icBackW),
              ),
            ),
          ) : Container()
      ),
      body: body,
    );
  }
}
