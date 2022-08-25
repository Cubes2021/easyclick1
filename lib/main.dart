import 'package:easyclick1/view/checkout_page.dart';
import 'package:easyclick1/view/email_mobile_page.dart';
import 'package:easyclick1/view/home_page.dart';
import 'package:easyclick1/view/mobilesignup_view.dart';
import 'package:easyclick1/view/otp_Verification_page.dart';
import 'package:easyclick1/view/profile_page.dart';
import 'package:easyclick1/view/review_page.dart';
import 'package:easyclick1/view/service_description.dart';
import 'package:easyclick1/view/service_listing.dart';
import 'package:easyclick1/view/splash_screen.dart';

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
          theme: ThemeData(backgroundColor: Colors.white),
          home: CheckOutPage(),
        );
      },
    );
  }
}
