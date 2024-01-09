import 'package:camsquad/src/size_config.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/app_theme.dart';
import '../team/components/search_box.dart';
import 'components/members_list.dart';


class PublicMembersScreen extends StatelessWidget {
  const PublicMembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgBoxColor,
      appBar: AppBar(
        title: Text("Traditional Members",style: kTextStyle18.copyWith(color: Colors.white),),
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: BackIconButton(),
        ),
        backgroundColor: AppColor.primaryColor,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.filter_list,color: Colors.white,))
        ],
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
          Container(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SearchBox(),
                  ),
                  const SizedBox(height: 40,),
                  const Expanded(child:MembersList())
                ],
              )
          ),
        ],
      ),
    );
  }
}
