import 'package:easyclick1/controller/timeslot_controller.dart';
import 'package:easyclick1/widgets/custom_button.dart';
import 'package:easyclick1/widgets/textButton.dart';
import 'package:easyclick1/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TimeSlotPage extends StatefulWidget {
  const TimeSlotPage({Key? key}) : super(key: key);

  @override
  _TimeSlotPageState createState() => _TimeSlotPageState();
}

class _TimeSlotPageState extends State<TimeSlotPage> {
  TimeController timeController = Get.put(TimeController());
  final date = TextEditingController();
  final hours = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0XFFEE6F57),
                    size: 20.sp,
                  ),
                ),
                Text(
                  'Date et lieu',
                  style: TextStyle(color: Color(0XFF1F3C88), fontWeight: FontWeight.bold, fontSize: 17.sp),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date',
                    style: TextStyle(color: Color(0XFF1F3C88), fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  CustomTextField(
                    suffixIconcolor: Color(0XFFEE6F57),
                    TextEditingController: date,
                    Height: 7.h,
                    string: 'Date',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.calendar_today_outlined,
                        color: Color(0XFFEE6F57),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  CustomTextField(
                    suffixIconcolor: Color(0XFFEE6F57),
                    TextEditingController: hours,
                    Height: 7.h,
                    string: 'Heure',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.access_time_outlined,
                        color: Color(0XFFEE6F57),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Adresse',
                    style: TextStyle(color: Color(0XFF1F3C88), fontWeight: FontWeight.bold, fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Text(
                    '243 Avenue des Lilas\nLille',
                    style: TextStyle(color: Color(0XFF4F4F4F), fontSize: 18.sp),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 4.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0XFFE74C3C),
                        ),
                        color: Color(0XFFF1CDC9),
                        borderRadius: BorderRadius.circular(2.5.pt),
                      ),
                      child: Center(
                        child: Text(
                          'Modifier',
                          style: TextStyle(
                            color: Color(0XFFE74C3C),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  GestureDetector(
                    onTap: () {
                      timeController.navigate();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0XFF1F3C88),
                              ),
                            ),
                            Text(
                              ' 20€',
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF1F3C88),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 5.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                            color: Color(0XFFEE6F57),
                            borderRadius: BorderRadius.circular(3.pt),
                          ),
                          child: Center(
                            child: Text(
                              'Confirmer',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
