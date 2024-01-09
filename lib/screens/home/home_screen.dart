import 'package:camsquad/controllers/home_controller.dart';
import 'package:camsquad/screens/home/components/event_list_view.dart';
import 'package:camsquad/src/images.dart';
import 'package:camsquad/src/size_config.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {

   HomeScreen({super.key});
   final _ctr = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: SizeConfig.screenHeight! * 0.40,
            decoration: const BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft:  Radius.circular(30))
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 50,),
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("ID : ${_ctr.loginModel!.userId}",style: kTextStyle12.copyWith(color: AppColor.primaryColor),),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Events",style: kTextStyle16.copyWith(color: Colors.white),),
                      const SizedBox(height: 10,),
                      InkWell(
                        onTap: (){
                          _ctr.navigateCalenderScreen();
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(AssetData.ic0,width: 100,height: 100,),
                            const SizedBox(width: 5,),
                            SvgPicture.asset(AssetData.ic3,width: 100,height: 100,),
                            const Spacer(),
                            SizedBox(
                              width: 70,
                              child: Stack(
                                children: [
                                  IconButton(
                                      onPressed: (){},
                                      icon: const Icon(Icons.notifications,
                                        color: AppColor.secondaryColor1,
                                        size: 60,)
                                  ),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                      decoration: BoxDecoration(
                                          color: AppColor.secondaryColor,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Text("6",style: kTextStyle14.copyWith(color: Colors.white),),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("This\nMonth",style: kTextStyle16.copyWith(color: Colors.white),),
                          const Spacer(),
                          SvgPicture.asset(AssetData.ic0,width: 40,height: 40,),
                          const SizedBox(width: 5,),
                          SvgPicture.asset(AssetData.ic5,width: 40,height: 40,),
                          const SizedBox(width: 10,),
                          Text("Next\nMonth",style: kTextStyle16.copyWith(color: Colors.white),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: SizeConfig.screenHeight! * 0.35),
            child: Column(
              children: [
                SvgPicture.asset(AssetData.homeImg),
                Expanded(
                    child: EventListView()
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
