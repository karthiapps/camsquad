import 'package:camsquad/screens/members/components/members_list.dart';
import 'package:camsquad/screens/members/public_members_screen.dart';
import 'package:camsquad/src/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/member_controller.dart';


class PublicList extends StatelessWidget {
   PublicList({super.key});

  final _ctr = Get.find<MemberController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _ctr.listPublic.length,
        itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              Get.to(() => const PublicMembersScreen());
            },
            child: Container(
              alignment: Alignment.center,
              height: 75,
              margin: const EdgeInsets.only(bottom: 10),
              child: Image.asset(_ctr.listPublic[index]),
            ),
          );
        }
    );
  }
}
