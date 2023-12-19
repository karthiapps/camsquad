import 'package:camsquad/src/images.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_stack/image_stack.dart';

class EventListView extends StatelessWidget {
  const EventListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
        itemBuilder: (context,index){
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: AppColor.darkGrayColor.withOpacity(0.25),
                  blurRadius: 16,
                  spreadRadius: 5,
                  offset: const Offset(0,5)
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("My Event 01",style: kTextStyle20.copyWith(color: AppColor.t1Color),),
                        Text("12 Apr, 12:00 am - 12:30 am",style: kTextStyle14.copyWith(color: AppColor.t2Color),),
                        Row(
                          children: [
                            const Icon(Icons.location_on_outlined,color: AppColor.primaryColor,),
                            Text("Madurai",style: kTextStyle14.copyWith(color: AppColor.t2Color),),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset(AssetData.personImg),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Text("Description",style: kTextStyle14.copyWith(color: AppColor.t1Color),),
                Text("Donec porta erat leo, et malesuada lacus convallis and in. Proin ultricies turpis eu urna volutpat",style: kTextStyle14.copyWith(color: AppColor.t2Color),),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: ImageStack.widgets(
                        children: [Image.asset(AssetData.person1Img),Image.asset(AssetData.person1Img),Image.asset(AssetData.person1Img)],
                        totalCount: 3,
                        widgetRadius: 60,
                        widgetCount: 3,
                        widgetBorderWidth: 1,
                        backgroundColor: Colors.transparent,
                        extraCountBorderColor: Colors.transparent,
                        widgetBorderColor: Colors.transparent,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Center(child: Text("Created on : Jan 12, 8.30 am",style: kTextStyle12.copyWith(color: AppColor.t1Color),)),
              ],
            ),
          );
        }
    );
  }
}
