import 'package:camsquad/screens/team/team_screen.dart';
import 'package:camsquad/src/images.dart';
import 'package:camsquad/src/size_config.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_stack/image_stack.dart';
import '../../widgets/common_round.dart';
import '../../widgets/common_appbar.dart';


class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonAppBar(
      title: '',
      isBack: true,
      body: Container(
        color: AppColor.bgBoxColor,
        child: Stack(
          children: [
            Container(
              height: SizeConfig.screenHeight! * 0.30,
              decoration: const BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight:  Radius.circular(60))
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(60),),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: const Offset(0,4)
                      ),
                      BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 11,
                          spreadRadius: 0,
                          offset: const Offset(0,9)
                      )
                    ]
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                            Text("Vinoth Kumar",style: kTextStyle20.copyWith(fontWeight: FontWeight.w700,color:  AppColor.t1Color),),
                            Text("ID: AD2356",style: kTextStyle14.copyWith(color: AppColor.t2Color),),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      children: [
                        const Icon(Icons.tag,color: AppColor.primaryColor,size: 20),
                        const SizedBox(width: 5,),
                        Text("Wedding",style: kTextStyle14.copyWith(color: AppColor.t1Color,fontWeight: FontWeight.w600),),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        const Icon(Icons.notifications_active_outlined,color: AppColor.primaryColor,size: 20),
                        const SizedBox(width: 5,),
                        Text("12 Apr, 12:00 am -4:30 am",style: kTextStyle14.copyWith(color: AppColor.t2Color)),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined,color: AppColor.primaryColor,size: 20,),
                        const SizedBox(width: 5,),
                        Text("Wedding",style: kTextStyle14.copyWith(color: AppColor.t2Color),),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(() => TeamScreen());
                          },
                          child: Center(
                            child: ImageStack.widgets(
                              totalCount: 7,
                              widgetRadius: 60,
                              widgetCount: 5,
                              widgetBorderWidth: 1,
                              backgroundColor: Colors.transparent,
                              extraCountBorderColor: Colors.transparent,
                              widgetBorderColor: Colors.transparent,
                              children: [Image.asset(AssetData.person1Img),Image.asset(AssetData.person1Img),Image.asset(AssetData.person1Img),Image.asset(AssetData.person1Img),Image.asset(AssetData.person1Img),Image.asset(AssetData.person1Img),Image.asset(AssetData.person1Img),],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Text("Description",style: kTextStyle16.copyWith(color: AppColor.t1Color,fontWeight: FontWeight.w600),),
                    const SizedBox(height: 10,),
                    Text("A statement, picture in words, or account that describes; descriptive representation. the act or method of describing.",
                      style: kTextStyle14.copyWith(color: AppColor.t2Color),),
                    const SizedBox(height: 20,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GrayRound(imgUrl: AssetData.icAddAttachment,),
                        GrayRound(imgUrl: AssetData.icAddLocation,),
                        PinkRound(imgUrl: AssetData.icPerson,),
                        PinkRound(imgUrl: AssetData.icMail,),
                        BlueRound(imgUrl: AssetData.icEdit,),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Center(child: Text("Created on : Jan 12, 8.30 am",style: kTextStyle12.copyWith(color: AppColor.t1Color),)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
