import 'package:flutter/material.dart';
import '../../../src/images.dart';
import '../../../theme/app_color.dart';
import '../../../theme/app_theme.dart';
import '../../event/event_details_screen.dart';
import 'package:get/get.dart';

class CalenderListView extends StatelessWidget {
  const CalenderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              Get.to(() => const EventDetailsScreen());
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              margin: const EdgeInsets.only(bottom: 15,left: 15,right: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColor.bgBoxColor),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: const Offset(0,4)
                    ),
                  ]
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: Image.asset(AssetData.personImg),
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("My Event",style: kTextStyle14.copyWith(color: AppColor.t1Color),),
                      Text("Wedding",style: kTextStyle14.copyWith(color: AppColor.primaryColor),),
                      Text("12 Apr, 12:00 am -4:30 am",style: kTextStyle14.copyWith(color: AppColor.t2Color)),
                      Text("Chennai",style: kTextStyle14.copyWith(color: AppColor.t2Color)),
                    ],
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}
