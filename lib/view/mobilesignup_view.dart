import 'package:country_code_picker/country_code_picker.dart';
import 'package:easyclick1/controller/mobilesignup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/textButton.dart';

class MobileSignUpPage extends StatefulWidget {
  const MobileSignUpPage({Key? key}) : super(key: key);

  @override
  _MobileSignUpPageState createState() => _MobileSignUpPageState();
}

class _MobileSignUpPageState extends State<MobileSignUpPage> {
  MobileSignUpControlle mobileSignUpControlle = Get.put(
    MobileSignUpControlle(),
  );
  final mobilenumber = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Form(
            key: formkey,
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
                  height: 7.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.pt),
                    color: Color(0XFFEEEEEE),
                  ),
                  child: Row(
                    children: [
                      CountryCodePicker(
                        backgroundColor: Color(0XFFEEEEEE),
                        padding: EdgeInsets.zero,
                        initialSelection: "FR",
                        favorite: ["+33", "FR"],
                      ),
                      VerticalDivider(
                        width: 0.1.w,
                        indent: 1.h,
                        endIndent: 1.h,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter MobileNumber';
                            }
                          },
                          controller: mobilenumber,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(hintText: 'MobileNumber', border: InputBorder.none),
                        ),
                      ),
                      TextButtons(
                        onpressed: () {},
                        text: 'Modifier',
                        color: Color(0XFF1F3C88),
                        textStyle: TextStyle(fontSize: 15.sp),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                GestureDetector(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      mobileSignUpControlle.navigatesignupPage();
                    }
                  },
                  child: Container(
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
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                    "En poursuivant votre navigation sur l’application, vous acceptez nos conditions d'utilisation et notre politique de confidentialité.")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
