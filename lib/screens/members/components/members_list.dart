import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../src/images.dart';
import '../../../theme/app_color.dart';
import '../../../theme/app_theme.dart';

class MembersList extends StatelessWidget {
  const MembersList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index){
          return Container(
            margin: const EdgeInsets.only(left: 20,right: 10,bottom: 10),
            child: SizedBox(
              height: 150,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 15),
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28),
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 120,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20,),
                              Text("Ranjith Kumar",style: kTextStyle14.copyWith(color: AppColor.t1Color,fontWeight: FontWeight.w600),),
                              Text("Photographer",style: kTextStyle14.copyWith(color: AppColor.t2Color)),
                              Text("Madurai, Trichy, Theni, Karur.",style: kTextStyle14.copyWith(color: AppColor.t2Color)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 15,),
                      Column(
                        children: [
                          SizedBox(
                            height: 90,
                            width: 90,
                            child: Image.asset(AssetData.personImg),
                          ),
                          const SizedBox(height: 5,),
                          Text("ID: AD2356",style: kTextStyle12.copyWith(color: AppColor.t1Color),),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.only(right: 40),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.bgBoxColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 4,
                                spreadRadius: 0,
                                offset: const Offset(0,4)
                            ),
                          ]
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(MdiIcons.whatsapp,color: AppColor.bgBoxColor2,size: 25,),
                            const SizedBox(width: 15,),
                            const Icon(Icons.call,color: AppColor.bgBoxColor2,size: 25,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.add,color: Colors.white,),
                    ),
                  ),
                  // Container(
                  //   alignment: Alignment.centerRight,
                  //   padding: const EdgeInsets.only(bottom: 20),
                  //   child: Container(
                  //     padding: const EdgeInsets.all(9),
                  //     decoration: BoxDecoration(
                  //       color: AppColor.bgBoxColor2,
                  //       shape: BoxShape.rectangle,
                  //       borderRadius: BorderRadius.circular(12),
                  //     ),
                  //     child: const Icon(Icons.add,color: AppColor.iconColor,),
                  //   ),
                  // )
                ],
              ),
            ),
          );
        }
    );
  }
}
