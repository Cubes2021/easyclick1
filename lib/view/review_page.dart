import 'package:easyclick1/controller/review_controller.dart';
import 'package:easyclick1/view/home_page.dart';
import 'package:easyclick1/widgets/custom_button.dart';
import 'package:easyclick1/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReviewPage extends StatelessWidget {
  final comments = TextEditingController();
  ReviewController reviewController = Get.put(ReviewController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 35.h,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        'Revue',
                        style: TextStyle(
                          color: Color(0XFF1F3C88),
                          fontSize: 25.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Avez-vous été satisfait du travail?',
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Ecrivez un commentaire sur votre expérience.',
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Center(
                        child: CircleAvatar(
                          radius: 5.5.pt,
                          backgroundImage: AssetImage('assets/images/booking1.png'),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Center(
                        child: Text(
                          'Hugo Fernandez',
                          style: TextStyle(color: Color(0XFF1F3C88), fontSize: 17.sp, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Controle Antiparasitaire',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
                        ),
                        Text(
                          'Ven 02 Juin 2021 a 11h30',
                          style: TextStyle(fontWeight: FontWeight.w200, fontSize: 16.sp),
                        ),
                      ],
                    ),
                    Container(
                      height: 2.h,
                      width: 18.w,
                      decoration: BoxDecoration(
                        color: Color(0XFF2ECC71),
                        borderRadius: BorderRadius.circular(2.pt),
                      ),
                      child: Center(
                        child: Text(
                          'TERMINE',
                          style: TextStyle(fontSize: 13.sp, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                height: 50.h,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Votre Note',
                        style: TextStyle(
                          color: Color(0XFF1F3C88),
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star_border_outlined,
                            color: Colors.grey.shade300,
                            size: 25.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Vos Commentaires',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      CustomTextField(
                        textStyle: TextStyle(fontWeight: FontWeight.w700),
                        Height: 15.h,
                        TextEditingController: comments,
                        string: 'write your review',
                      ),
                      SizedBox(
                        height: 2.5.h,
                      ),
                      CustomButton(
                          text: 'Envoyer',
                          ontap: () {
                            reviewController.navigate();
                          })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
