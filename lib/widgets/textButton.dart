import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
  TextButtons({required this.text, this.color, this.textStyle, required this.onpressed});
  final Color? color;
  final String? text;
  final TextStyle? textStyle;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      child: Text(
        text.toString(),
        style: TextStyle(color: color),
      ),
    );
  }
}
