import 'package:easyclick1/controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeController welcomeController = Get.put(WelcomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.h),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Image.asset('assets/images/welcome.png'),
              SizedBox(
                height: 10.h,
              ),
              Column(
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet,',
                    style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                  ),
                  Text(
                    'consectetur adipiscing',
                    style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                  ),
                  Text(
                    'elit, sed do',
                    style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
