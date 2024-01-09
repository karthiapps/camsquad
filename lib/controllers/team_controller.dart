import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeamController extends GetxController{

  List listAddedMembers = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13"
  ].obs;

  RxBool isRemoveOption = false.obs;


  removeTeamMember(String obj){
    listAddedMembers.remove(obj);
  }

  enableRemoveOption(){
    if(!isRemoveOption.value){
      isRemoveOption.value = true;
    }

  }
}