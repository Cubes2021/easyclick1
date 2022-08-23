import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MobileSignUpPage extends StatefulWidget {
  const MobileSignUpPage({Key? key}) : super(key: key);

  @override
  _MobileSignUpPageState createState() => _MobileSignUpPageState();
}

class _MobileSignUpPageState extends State<MobileSignUpPage> {
  final mobilenumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Text(
                    'Se connecter sur Easy',
                    style: TextStyle(
                      color: Color(0XFF1F3C88),
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  Text(
                    'clic',
                    style: TextStyle(
                      color: Color(0XFFEE6F57),
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                child: InternationalPhoneNumberInput(
                  initialValue: PhoneNumber(isoCode: '+33', dialCode: '+33'),
                  inputBorder: OutlineInputBorder(),
                  searchBoxDecoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onInputChanged: (mobile) {},
                  inputDecoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 7.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.pt),
                  color: Color(0XFFEE6F57),
                ),
                child: Center(
                  child: Text(
                    'Suivant',
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
                  ),
                ),
              ),
              Text("En poursuivant votre navigation sur l’application, vous acceptez nos conditions d'utilisation et notre politique de confidentialité.")
            ],
          ),
        ),
      ),
    );
  }
}
