import 'package:camsquad/controllers/team_controller.dart';
import 'package:camsquad/screens/members/members_screen.dart';
import 'package:camsquad/src/images.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../theme/app_theme.dart';
import 'components/search_box.dart';
import 'components/team_list.dart';

class TeamScreen extends StatelessWidget {
  TeamScreen({super.key});

  final _ctr = Get.put(TeamController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        alignment: Alignment.bottomRight,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: AppColor.secondaryColor,
              shape: const CircleBorder(),
              onPressed: () {
                Get.to(() =>  MembersScreen());
              },
              heroTag: "Add",
              child: const Icon(Icons.add,color: Colors.white,),
            ),
            const SizedBox(width: 10,),
            FloatingActionButton(
              shape: const CircleBorder(),
              backgroundColor: AppColor.secondaryColor,
              onPressed: () {
                _ctr.enableRemoveOption();
              },
              heroTag: "Remove",
              child: const Icon(Icons.remove,color: Colors.white,),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SvgPicture.asset(AssetData.imgBgTeam,fit: BoxFit.cover,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const BackIconButton(),
                    Text("Team Members",style: kTextStyle18.copyWith(color: Colors.white),)
                  ],
                ),
                const SizedBox(height: 20,),
                SearchBox(),
                const SizedBox(height: 20,),
                 Expanded(
                    child: TeamList()
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
