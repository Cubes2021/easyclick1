import 'package:easyclick1/view/booking.dart';
import 'package:easyclick1/view/cart_page.dart';
import 'package:easyclick1/view/checkout_page.dart';
import 'package:easyclick1/view/edit_profile.dart';
import 'package:easyclick1/view/email_mobile_page.dart';
import 'package:easyclick1/view/home_page.dart';
import 'package:easyclick1/view/mobilesignup_view.dart';
import 'package:easyclick1/view/otp_Verification_page.dart';
import 'package:easyclick1/view/profile_page.dart';
import 'package:easyclick1/view/review_page.dart';
import 'package:easyclick1/view/search_page.dart';
import 'package:easyclick1/view/service_listing.dart';
import 'package:easyclick1/view/sub_catagories.dart';
import 'package:easyclick1/view/time_slot.dart';
import 'package:easyclick1/widgets/bottom_bar.dart';
import 'package:easyclick1/widgets/custom_calender.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'easyclic',
          theme: ThemeData(backgroundColor: Colors.white
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.

              ),
          home: BookingPage(),
        );
      },
    );
  }
}
