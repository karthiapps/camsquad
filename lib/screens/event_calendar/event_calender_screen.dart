import 'package:camsquad/screens/event_calendar/components/calender_listview.dart';
import 'package:camsquad/src/size_config.dart';
import 'package:camsquad/theme/app_color.dart';
import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';
import '../../widgets/common_appbar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class EventCalenderScreen extends StatelessWidget {
  const EventCalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonAppBar(
      title: 'Event Calender',
      isBack: false,
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              height: SizeConfig.screenHeight! * 0.15,
              decoration: const BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                )
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: const Offset(0,4)
                        ),
                      ]
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: SfCalendar(
                    view: CalendarView.month,
                    showCurrentTimeIndicator: true,
                    showNavigationArrow: true,
                    showTodayButton: false,
                    showDatePickerButton: false,
                    viewNavigationMode: ViewNavigationMode.snap,
                    cellBorderColor: Colors.transparent,
                  ),
                ),
                const SizedBox(height: 10,),
                const Expanded(
                  child: CalenderListView(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
