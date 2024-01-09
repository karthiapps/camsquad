import 'dart:convert';
import 'package:camsquad/models/login_model.dart';
import 'package:camsquad/screens/event_calendar/event_calender_screen.dart';
import 'package:camsquad/screens/event/event_details_screen.dart';
import 'package:camsquad/utils/shared_preference_local_storage.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  LoginModel? loginModel;

  void navigateDetails(){
    Get.to(() => const EventDetailsScreen());
  }
  void navigateCalenderScreen(){
    Get.to(() => const EventCalenderScreen());
  }
}