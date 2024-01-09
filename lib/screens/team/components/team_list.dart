import 'package:camsquad/src/size_config.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/team_controller.dart';
import '../../../src/images.dart';

class TeamList extends StatelessWidget {
   TeamList({super.key});

  final _ctr = Get.find<TeamController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(() =>
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: List.generate(_ctr.listAddedMembers.length, (index) {
              var data = _ctr.listAddedMembers[index];
              return SizedBox(
                width: SizeConfig.screenWidth! / 3.5,
                height: 150,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: Image.asset(AssetData.personImg,),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text("Karthi",style: kTextStyle12.copyWith(color: Colors.white),maxLines: 1,)
                      ],
                    ),
                    _ctr.isRemoveOption.value ? Container(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: (){
                          _ctr.removeTeamMember(data);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: AppColor.secondaryColor,
                              shape: BoxShape.circle
                          ),
                          child: const Icon(Icons.remove,color: Colors.white,size: 15,),
                        ),
                      ),
                    ) : Container(),
                    // Container(
                    //   alignment: Alignment.topRight,
                    //   child: InkWell(
                    //     onTap: (){},
                    //     child: Container(
                    //       padding: const EdgeInsets.all(8),
                    //       decoration: const BoxDecoration(
                    //           color: AppColor.secondaryColor,
                    //           shape: BoxShape.circle
                    //       ),
                    //       child: const Icon(Icons.done,color: Colors.white,size: 15,),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              );
            })
        ),
      ),
    );
  }
}
