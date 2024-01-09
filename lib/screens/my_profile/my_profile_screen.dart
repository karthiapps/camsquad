import 'package:camsquad/screens/auth/login_screen.dart';
import 'package:camsquad/screens/my_profile/edit_profile_screen.dart';
import 'package:camsquad/src/images.dart';
import 'package:camsquad/src/size_config.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:camsquad/utils/shared_preference_local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'components/label.dart';


class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgBoxColor,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topRight,
            height: SizeConfig.screenHeight! * 0.40,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36)
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end:  Alignment.bottomRight,
                colors: [
                  AppColor.secondaryColor,
                  AppColor.primaryColor
                ],
              )
            ),
            child: SvgPicture.asset(AssetData.imgProfileLogoBg),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.15,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 70,),
                          Label(
                            iconData: Icons.edit,
                            title: "Change Profile Details",
                            onTab: (){
                              Get.to(() => const EditProfileScreen());
                            },
                          ),
                          const SizedBox(height: 25,),
                          Label(
                            iconData: Icons.lock_outline,
                            title: "Change Password",
                            onTab: (){},
                          ),
                          const SizedBox(height: 25,),
                          Label(
                            iconData: Icons.calendar_month_outlined,
                            title: "Event History",
                            onTab: (){},
                          ),
                          const SizedBox(height: 25,),
                          Label(
                            iconData: Icons.settings_outlined,
                            title: "Privacy Settings",
                            onTab: (){},
                          ),
                          const SizedBox(height: 25,),
                          Label(
                            iconData: MdiIcons.listBoxOutline,
                            title: "Terms and Conditions",
                            onTab: (){},
                          ),
                          const SizedBox(height: 25,),
                          Label(
                            iconData: Icons.call_outlined,
                            title: "Camsquad Support",
                            onTab: (){},
                          ),
                          const SizedBox(height: 25,),
                          Label(
                            iconData: Icons.logout_outlined,
                            title: "Logout",
                            onTab: (){
                              SharedPreferenceLocalStorage().clear();
                              Get.offAll(() => LoginScreen());
                            },
                          ),
                          const SizedBox(height:10,),
                          Text("Version 1.0.0",style: kTextStyle12.copyWith(color: AppColor.t2Color),)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset(AssetData.personImg),
                ),
                const SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text("Ranjith Kumar",style: kTextStyle18.copyWith(color: Colors.white),),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
              margin: EdgeInsets.only(top: SizeConfig.screenHeight! * 0.15,right: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: const Color(0xFF444444),
              ),
              child: Text("ID: 023456",style: kTextStyle12.copyWith(color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}
