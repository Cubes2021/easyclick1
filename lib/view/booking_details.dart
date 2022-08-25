import 'package:easyclick1/controller/booking_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BookingDetailPage extends StatelessWidget {
  List<String> help = [
    'I am not happy with my booking experience.',
    'Professional has not completed the service',
    'Need help with other issues',
  ];
  DetailPageCOntroller detailPageCOntroller = Get.put(DetailPageCOntroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          detailPageCOntroller.navigate();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color(0XFFEE6F57),
                          size: 25.sp,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text('Vendredi 02 Juin 2021 à 11h30 ')],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    child: Container(
                      height: 3.h,
                      width: 22.w,
                      decoration: BoxDecoration(
                        color: Color(0XFF2ECC71),
                        borderRadius: BorderRadius.circular(4.pt),
                      ),
                      child: Center(
                        child: Text(
                          'Job Completed',
                          style: TextStyle(fontSize: 13.sp, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 5.5.pt,
                        backgroundImage: AssetImage('assets/images/service.png'),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Clean Home Services',
                            style: TextStyle(fontSize: 16.sp, color: Color(0XFF1F3C88), fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Text(
                                'You Rated',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Color(0XFF878787),
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0XFFF1C40F),
                                size: 17.sp,
                              ),
                              Text(
                                '4.58',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Color(0XFF878787),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Booking Details',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.list_alt_sharp,
                        color: Color(0XFF1F3C88),
                        size: 25.sp,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Row(
                        children: [
                          Text(
                            'Amount Paid',
                            style: TextStyle(color: Color(0XFF1F3C88), fontSize: 16.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '  AED 104',
                            style: TextStyle(
                              color: Color(0XFF878787),
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Divider(
                    thickness: 0.1.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color(0XFF1F3C88),
                        size: 25.sp,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Address',
                            style: TextStyle(color: Color(0XFF1F3C88), fontSize: 16.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Sheikh Mohamed Bin Rashid Boulevard,\nDowntown, PO Box 123234, Downtown\nDubai, Dubai, United Arab Emirates',
                            style: TextStyle(
                              color: Color(0XFF878787),
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Divider(
                    thickness: 0.1.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_rounded,
                        color: Color(0XFF1F3C88),
                        size: 25.sp,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Row(
                        children: [
                          Text(
                            'Time and Date ',
                            style: TextStyle(color: Color(0XFF1F3C88), fontSize: 16.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Sat May 21st at 1:00 pm',
                            style: TextStyle(
                              color: Color(0XFF878787),
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Divider(
                    thickness: 0.1.h,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    'Need Help?',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Column(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.5.h),
                  child: ListTile(
                    minVerticalPadding: 0.5.h,
                    tileColor: Colors.grey.shade200,
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text(
                      help[index],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
