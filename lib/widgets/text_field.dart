import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.TextEditingController, required this.string});
  final TextEditingController;
  final String? string;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.pt),
        color: Color(0XFFEEEEEE),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.w),
        child: TextFormField(
          controller: TextEditingController,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: string,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20.sp),
          ),
        ),
      ),
    );
  }
}
