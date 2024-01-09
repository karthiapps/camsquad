import 'package:camsquad/src/images.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_stack/image_stack.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';

class EventListView extends StatelessWidget {
   EventListView({super.key});

  final _ctr = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
        itemBuilder: (context,index){
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.20),
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
                        Text("My Event 01",style: kTextStyle18.copyWith(color: AppColor.t1Color),),
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
                    InkWell(
                      onTap: (){
                        _ctr.navigateDetails();
                      },
                      child: SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset(AssetData.personImg),
                      ),
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
                const SizedBox(height: 5,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Center(child: Text("Created on : Jan 12, 8.30 am",style: kTextStyle12.copyWith(color: AppColor.t1Color),)),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColor.secondaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Center(child: SvgPicture.asset(AssetData.icEdit,height: 25,width: 25,)),
                      )
                    ),
                  ],
                ),
              ],
            ),
          );
        }
    );
  }
}
