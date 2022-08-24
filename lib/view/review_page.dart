import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 40.h,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Revue',
                  style: TextStyle(
                    color: Color(0XFF1F3C88),
                    fontSize: 30.sp,
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  'Avez-vous été satisfait du travail?',
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Ecrivez un commentaire sur votre expérience.',
                  style: TextStyle(
                    fontSize: 17.sp,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 5.5.pt,
                    backgroundImage: AssetImage('assets/images/review.png'),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  'Hugo Fernandez',
                  style: TextStyle(
                    color: Color(0XFF1F3C88),
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
