import 'package:camsquad/controllers/add_event_controller.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';
import '../../../models/add_event_item_model.dart';
import '../../../widgets/common_textfield.dart';
import 'package:get/get.dart';

class EventItemList extends StatelessWidget {
  EventItemList({super.key,required this.title,required this.list});

  final String? title;
  final List<dynamic>? list;
  final _ctr = Get.find<AddEventController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list!.length,
        shrinkWrap: true,
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context,index){
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            margin: const EdgeInsets.only(bottom: 15.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppColor.bgBoxColor),
                borderRadius: BorderRadius.circular(5)
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0,vertical: 8),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text(title!,style: kTextStyle14,),
                      Container(
                        alignment: Alignment.centerRight,
                        child: index == 0 ? InkWell(
                          onTap: (){
                            _ctr.addItem(title!);
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                color: AppColor.primaryColor,
                                shape: BoxShape.circle
                            ),
                            child: const Icon(Icons.add,color: Colors.white,),
                          ),
                        ) : InkWell(
                          onTap: (){
                            _ctr.removeItem(title!,index);
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                color: AppColor.primaryColor,
                                shape: BoxShape.circle
                            ),
                            child: const Icon(Icons.remove,color: Colors.white,),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                CommonOutlineTextFieldMedium(
                  txt: "Date*",
                  textInputType: TextInputType.datetime,
                  readOnly: true,
                  onEditingComplete: (){},
                  onChanged: (val){},
                  icnSuffix: Icons.calendar_today,
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: CommonOutlineTextFieldMedium(
                        txt: "Start Time",
                        textInputType: TextInputType.datetime,
                        readOnly: true,
                        onEditingComplete: (){},
                        onChanged: (val){},
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Expanded(
                      child: CommonOutlineTextFieldMedium(
                        txt: "End Time",
                        textInputType: TextInputType.datetime,
                        readOnly: true,
                        onEditingComplete: (){},
                        onChanged: (val){},
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                CommonOutlineTextFieldMedium(
                  txt: "Event Location",
                  textInputType: TextInputType.text,
                  readOnly: true,
                  onEditingComplete: (){},
                  onChanged: (val){},
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Add me to this event",style: kTextStyle14.copyWith(color: AppColor.t1Color),),
                    const SizedBox(width: 20,),
                    Transform.scale(
                      scale: 0.7,
                      child: Switch(
                          value: true,
                          activeColor: Colors.white,
                          focusColor: AppColor.primaryColor,
                          activeTrackColor: AppColor.secondaryColor,
                          onChanged: (value){}
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5,),
              ],
            ),
          );
        }
    );
  }
}
