import 'package:flutter/material.dart';
import '../../../controllers/add_event_controller.dart';
import '../../../theme/app_color.dart';
import '../../../theme/app_theme.dart';
import 'package:get/get.dart';

class EventType extends StatelessWidget {
  EventType({super.key,required this.title});

  final String title;

  final _ctr = Get.find<AddEventController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _ctr.addAndRemove(title),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColor.primaryColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title,style: kTextStyle12.copyWith(color: Colors.white),),
            const SizedBox(width: 5,),
            const Icon(Icons.close_rounded,color: Colors.white,size: 15,)
          ],
        ),
      ),
    );
  }
}
