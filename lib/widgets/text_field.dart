import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.TextEditingController,
      required this.string,
      this.suffixIcon,
      this.suffixIconcolor,
      this.prefixIcon,
      this.prefixIconcolor,
      this.Height,
      this.textStyle});
  final TextEditingController;
  final TextStyle? textStyle;
  final String? string;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? prefixIconcolor;
  final Color? suffixIconcolor;
  final double? Height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Height,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.pt),
        color: Color(0XFFEEEEEE),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.w),
        child: Center(
          child: TextFormField(
            controller: TextEditingController,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              suffixIconColor: suffixIconcolor,
              prefixIconColor: prefixIconcolor,
              border: InputBorder.none,
              hintText: string,
              hintStyle: TextStyle(color: Colors.grey, fontSize: 20.sp),
            ),
          ),
        ),
      ),
    );
  }
}
