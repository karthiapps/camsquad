import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/add_event_item_model.dart';

const wedding = "Wedding";
const reception = "Reception";
const other = "Other";

class AddEventController extends GetxController{

  final RxList selectedEvents = [].obs;

  final RxList listWedding = [].obs;
  final RxList listReception = [].obs;
  final RxList listOther = [].obs;

  final RxInt addItemsCount = 0.obs;


  addAndRemove(String name){
    if(selectedEvents.contains(name)){
      selectedEvents.remove(name);
      removeAllItem(name);
    }else{
      selectedEvents.add(name);
      addItem(name);
    }
  }

  removeAllItem(String name){
    if(name == wedding){
      listWedding.clear();
    }else if(name == reception){
      listReception.clear();
    }else{
      listOther.clear();
    }
    addItemsCount.value--;
  }

  addItem(String name){
    if(name == wedding){
      listWedding.add(AddEventItemModel(catId: name));
    }else if(name == reception){
      listReception.add(AddEventItemModel(catId: name));
    }else{
      listOther.add(AddEventItemModel(catId: name));
    }
    addItemsCount.value++;
  }
  removeItem(String name,int index){
    if(name == wedding){
      listWedding.removeAt(index);
    }else if(name == reception){
      listReception.removeAt(index);
    }else{
      listOther.removeAt(index);
    }
    addItemsCount.value--;
  }

  selectEventType(BuildContext context){
    showModalBottomSheet(
        context: context,
        backgroundColor: AppColor.primaryColor,
        builder: (builder){
          return Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Text("Events",style: kTextStyle18.copyWith(color: Colors.white),),
                  ],
                ),
              ),
              Obx(() =>
                Expanded(
                    child: Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          const SizedBox(height: 20,),
                          InkWell(
                            onTap: (){
                              addAndRemove(wedding);
                            },
                            child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                color: Colors.white,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Text(wedding,style: kTextStyle16.copyWith(color: selectedEvents.contains("Wedding") ? AppColor.secondaryColor : AppColor.t1Color),),
                                    // _selectedEvents.contains("Wedding") ?Container(
                                    //     alignment: Alignment.centerRight,
                                    //     padding: const EdgeInsets.symmetric(horizontal: 20),
                                    //     child: const Icon(Icons.done,color: AppColor.secondaryColor,)
                                    // ) : Container()
                                  ],
                                )
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              addAndRemove(reception);
                            },
                            child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                color: Colors.white,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Text(reception,style: kTextStyle16.copyWith(color: selectedEvents.contains("Reception") ? AppColor.secondaryColor : AppColor.t1Color),),
                                  ],
                                )
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              addAndRemove(other);
                            },
                            child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                color: Colors.white,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Text(other,style: kTextStyle16.copyWith(color: selectedEvents.contains("Other") ? AppColor.secondaryColor : AppColor.t1Color),),
                                  ],
                                )
                            ),
                          ),
                        ],
                      )
                    )
                ),
              )
            ],
          );
        }
    );
  }
}