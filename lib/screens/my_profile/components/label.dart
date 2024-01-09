import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({super.key,required this.iconData,required this.onTab,required this.title});

  final IconData iconData;
  final String title;
  final Function() onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      splashColor: Colors.black.withOpacity(0.2),
      highlightColor: AppColor.primaryDarkColor,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.bgBoxColor3,
            ),
            child: Icon(iconData,color: title == "Logout" ? Colors.red : AppColor.primaryColor,size: 20,),
          ),
          const SizedBox(width: 20,),
          Text(title,style: kTextStyle14.copyWith(),),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_rounded,color: AppColor.textColor,size: 20,)
        ],
      ),
    );
  }
}
