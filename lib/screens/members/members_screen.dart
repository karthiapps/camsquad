import 'package:camsquad/controllers/member_controller.dart';
import 'package:camsquad/src/size_config.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/app_theme.dart';
import '../team/components/search_box.dart';
import 'components/members_list.dart';
import 'components/public_list.dart';


class MembersScreen extends StatelessWidget {
   MembersScreen({super.key});

  final _ctr = Get.put(MemberController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgBoxColor,
      appBar: AppBar(
        title: Text("Add Members",style: kTextStyle18.copyWith(color: Colors.white),),
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: BackIconButton(),
        ),
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: SizeConfig.screenHeight! * 0.22,
            decoration: const BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
            ),
          ),
          Obx(() =>
            Container(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SearchBox(),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          _ctr.changeTab(0);
                        },
                        child: Container(
                          width: 120,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color:  _ctr.selectedTab.value == 0 ? AppColor.secondaryColor : AppColor.bgBoxColor1,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                    offset: const Offset(0,4)
                                ),
                              ]
                          ),
                          child: Text("My Squad",style: kTextStyle14.copyWith(color: _ctr.selectedTab.value == 0 ? Colors.white : AppColor.t4Color),),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          _ctr.changeTab(1);
                        },
                        child: Container(
                          width: 120,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: _ctr.selectedTab.value == 1 ? AppColor.secondaryColor : AppColor.bgBoxColor1,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                    offset: const Offset(0,4)
                                ),
                              ]
                          ),
                          child: Text("Public",style: kTextStyle14.copyWith(color: _ctr.selectedTab.value == 1 ? Colors.white : AppColor.t4Color),),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  _ctr.selectedTab.value == 0 ? const Expanded(child:MembersList()) : Expanded(child:PublicList()),
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
