import 'package:easyclick1/widgets/custom_button.dart';
import 'package:easyclick1/widgets/textButton.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OTPVerificationPage extends StatefulWidget {
  @override
  State<OTPVerificationPage> createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  OtpFieldController oTPcode = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Color(0XFFEE6F57),
                        size: 20.sp,
                      )),
                  Text(
                    'OTP',
                    style: TextStyle(color: Color(0XFF1F3C88), fontWeight: FontWeight.bold, fontSize: 17.sp),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'Entrez le code envoyé au +33(06)54210821',
                style: TextStyle(
                  color: Color(0XFF4F4F4F),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              OTPTextField(
                keyboardType: TextInputType.number,
                width: double.infinity,
                fieldWidth: 15.w,
                margin: EdgeInsets.symmetric(horizontal: 3.w),
                fieldStyle: FieldStyle.box,
                contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                otpFieldStyle: OtpFieldStyle(
                  backgroundColor: Color(0XFFEEEEEE),
                ),
                controller: oTPcode,
                length: 4,
              ),
              SizedBox(
                height: 0.7.h,
              ),
              Text(
                'Vous n\'avez pas reçu de code ?',
                style: TextStyle(
                  color: Color(0XFF8C8C8C),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextButtons(
                color: Color(0XFF1F3C88),
                text: "Renvoyer",
                onpressed: () {},
              ),
              SizedBox(
                height: 1.h,
              ),
              CustomButton(
                text: 'Verifier',
              )
            ],
          ),
        ),
      ),
    );
  }
}
