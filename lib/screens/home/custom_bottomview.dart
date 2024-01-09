import 'package:camsquad/models/login_model.dart';
import 'package:camsquad/screens/home/home_screen.dart';
import 'package:camsquad/src/images.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../event/add_event_screen.dart';
import '../event/my_events_screen.dart';
import '../event_calendar/event_calender_screen.dart';
import '../my_profile/my_profile_screen.dart';
class CustomBottomView extends StatelessWidget {
    CustomBottomView({super.key});
    ValueNotifier<int> selectedIndex = ValueNotifier(0);

  List<BottomNavigationBarItem> items = [
     BottomNavigationBarItem(
      icon: SvgPicture.asset(AssetData.icHome),
      activeIcon: SvgPicture.asset(AssetData.icHome,color: AppColor.primaryColor,),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AssetData.icCalender),
      activeIcon: SvgPicture.asset(AssetData.icCalender,color: AppColor.primaryColor,),
      label: 'Calender',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AssetData.icAdd),
      activeIcon: SvgPicture.asset(AssetData.icAdd),
      label: 'Add',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AssetData.icEvents),
      activeIcon: SvgPicture.asset(AssetData.icEvents,color: AppColor.primaryColor,),
      label: 'My Events',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AssetData.icProfile),
      activeIcon: SvgPicture.asset(AssetData.icProfile,color: AppColor.primaryColor,),
      label: 'Profile',
    ),
  ];

   static final List<Widget> _pages = <Widget>[
     HomeScreen(),
     EventCalenderScreen(),
     Container(),
     MyEventScreen(),
     MyProfileScreen(),
   ];

   void _onItemTapped(int index) {
     if(index == 2){
       Get.to(() => AddEventScreen());
     }else{
       selectedIndex.value = index;
     }
   }

   @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndex,
      builder: (context,value,child){
        return Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
            items: items,
            currentIndex: value,
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: AppColor.primaryColor,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
          ),
          body: Center(
            child: _pages.elementAt(value), //New
          ),
        );
      },
    );
  }
}
