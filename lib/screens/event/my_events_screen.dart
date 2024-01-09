import 'package:camsquad/theme/app_color.dart';
import 'package:flutter/material.dart';

import '../../src/images.dart';
import '../../src/size_config.dart';
import '../../theme/app_theme.dart';
import '../../widgets/common_button.dart';
import 'components/event_list.dart';

class MyEventScreen extends StatelessWidget {
  const MyEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: AppColor.primaryColor,
      //   leading: const BackIconButton(),
      // ),
      body: Container(
        color: AppColor.bgBoxColor,
        child: Stack(
          children: [
            Container(
              height: SizeConfig.screenHeight! * 0.40,
              decoration: const BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight:  Radius.circular(60))
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(AssetData.personImg),
                      ),
                      const SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Vinoth Kumar",style: kTextStyle20.copyWith(fontWeight: FontWeight.w700,color:  Colors.white),),
                          Text("ID: AD2356",style: kTextStyle14.copyWith(color: Colors.white,fontWeight: FontWeight.w400),),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Expanded(
                      child: EventList()
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
