import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomIcon extends StatefulWidget {
  final bool isSelected;
  final Color bgColor;
  final String text;
  final Color textColor;
  List<String> name = ['Mr.', 'Me.'];

  CustomIcon({
    this.isSelected = false,
    this.bgColor = Colors.green,
    required this.text,
    required this.textColor,
  });
  @override
  _CustomIconState createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47,
      height: 47,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Container(
          height: 4.5.h,
          width: 9.w,
          decoration: BoxDecoration(
            color: widget.bgColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(color: widget.textColor),
            ),
          ),
        ),
      ),
    );
  }
}
