import 'package:camsquad/screens/event/components/event_type.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/add_event_controller.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_textfield.dart';
import 'components/event_list.dart';
import 'components/event_item_list.dart';

class AddEventScreen extends StatelessWidget {
   AddEventScreen({super.key});

  final _ctr = Get.put(AddEventController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 100,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 10.0,top: 10),
            decoration: const BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
              )
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                const BackIconButton(),
                Text("Add New Event",style: kTextStyle18.copyWith(color: Colors.white),)
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    CommonOutlineTextField(
                      onChanged: (val){},
                      onEditingComplete: (){},
                      readOnly: false,
                      textInputType: TextInputType.text,
                      txt: 'Customer Name / Couple Name',
                    ),
                    const SizedBox(height: 10,),
                    Obx(() => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          border: Border.all(color: AppColor.borderColor)
                      ),
                      child: Row(
                        children: [
                          _ctr.selectedEvents.isEmpty ? Expanded(
                              child: InkWell(
                                onTap: (){
                                  _ctr.selectEventType(context);
                                },
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 16),
                                  child: Text("You can choose multiple events",style: kTextStyle12.copyWith(color: AppColor.labelTextColor),),
                                ),
                              )
                          ) :  Expanded(
                            child: Wrap(
                              runSpacing: 10,
                              spacing: 10,
                              children:  _ctr.selectedEvents.map((e){
                                return EventType(title: e.toString());
                              }).toList(),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.arrow_drop_down_sharp,color: AppColor.primaryColor,),
                            onPressed: (){
                              _ctr.selectEventType(context);
                            },
                          )
                        ],
                      ),
                    ),),
                    const SizedBox(height: 10,),
                    CommonOutlineTextField(
                      onChanged: (val){},
                      onEditingComplete: (){},
                      readOnly: false,
                      textInputType: TextInputType.text,
                      txt: 'Event Location',
                    ),
                    const SizedBox(height: 10,),
                    CommonOutlineTextField(
                      onChanged: (val){},
                      onEditingComplete: (){},
                      readOnly: false,
                      textInputType: TextInputType.text,
                      txt: 'Type the message note here...',
                    ),
                    const SizedBox(height: 10,),
                    Obx(() =>
                      _ctr.addItemsCount.value != 0 ? Column(
                        children: _ctr.selectedEvents.map((e){
                          if(e == wedding){
                            return EventItemList(
                              title: wedding,
                              list: _ctr.listWedding,
                            );
                          }else if(e == reception){
                            return EventItemList(
                              title: reception,
                              list: _ctr.listReception,
                            );
                          }else{
                            return EventItemList(
                              title: other,
                              list: _ctr.listOther,
                            );
                          }
                        }).toList(),
                      ) : Container(),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
