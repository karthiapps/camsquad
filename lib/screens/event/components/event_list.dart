import 'package:camsquad/screens/event/event_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_stack/image_stack.dart';

import '../../../src/images.dart';
import '../../../theme/app_color.dart';
import '../../../theme/app_theme.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              Get.to(() => const EventDetailsScreen());
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              margin: const EdgeInsets.only(bottom: 10,left: 15,right: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: const Offset(0,4)
                    ),
                    // BoxShadow(
                    //     color: Colors.black.withOpacity(0.25),
                    //     blurRadius: 11,
                    //     spreadRadius: 0,
                    //     offset: const Offset(0,9)
                    // )
                  ]
              ),
              child: Column(
                children: [
                  const SizedBox(height: 5,),
                  Text("Customer Name",style:  kTextStyle18.copyWith(color: AppColor.t1Color,fontWeight: FontWeight.w500),),
                  const SizedBox(height: 5,),
                  Row(
                    children: [
                      const Icon(Icons.tag,color: AppColor.primaryColor,size: 20),
                      const SizedBox(width: 5,),
                      Text("Wedding",style: kTextStyle14.copyWith(color: AppColor.t2Color,fontWeight: FontWeight.w600),),
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
                      Center(
                        child: ImageStack.widgets(
                          totalCount: 2,
                          widgetRadius: 60,
                          widgetCount: 3,
                          widgetBorderWidth: 1,
                          backgroundColor: Colors.transparent,
                          extraCountBorderColor: Colors.transparent,
                          widgetBorderColor: Colors.transparent,
                          children: [Image.asset(AssetData.person1Img),Image.asset(AssetData.person1Img),Image.asset(AssetData.person1Img),Image.asset(AssetData.person1Img),Image.asset(AssetData.person1Img),Image.asset(AssetData.person1Img)],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ),
          );
        }
    );
  }
}
