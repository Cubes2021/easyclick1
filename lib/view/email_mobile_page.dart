import 'package:country_code_picker/country_code_picker.dart';

import 'package:easyclick1/widgets/textButton.dart';
import 'package:easyclick1/widgets/text_field.dart';
import 'package:easyclick1/widgets/toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../controller/emailpage_controller.dart';

class EmailMobilePage extends StatefulWidget {
  const EmailMobilePage({Key? key}) : super(key: key);

  @override
  _EmailMobilePageState createState() => _EmailMobilePageState();
}

class _EmailMobilePageState extends State<EmailMobilePage> {
  EmailPageController emailPageController = Get.put(EmailPageController());
  final email = TextEditingController();
  final name = TextEditingController();
  final mobilenumber = TextEditingController();

  bool selected = true;
  List<bool> _selections = List.generate(2, (int) => false);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
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
                          controller: mobilenumber,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(hintText: 'MobileNumber', border: InputBorder.none),
                        ),
                      ),
                      TextButtons(
                        onpressed: () {
                          emailPageController.previousPage();
                        },
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
                Container(
                  height: 7.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.pt),
                    color: Color(0XFFEEEEEE),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'E-mail',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 17.sp),
                      ),
                    ),
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
                    color: Color(0XFFEEEEEE),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.w),
                    child: Row(
                      children: [
                        ToggleButtons(
                          renderBorder: false,
                          selectedColor: _selections == false ? Colors.white : Color(0XFF1F3C88),
                          color: _selections == true ? Color(0XFF1F3C88) : Colors.white,
                          children: <Widget>[
                            CustomIcon(
                              isSelected: _selections[0],
                              bgColor: _selections[0] == true ? Color(0XFF1F3C88) : Colors.white,
                              text: 'Mr.',
                              textColor: _selections[0] == true ? Colors.white : Color(0XFF1F3C88),
                            ),
                            CustomIcon(
                              isSelected: _selections[1],
                              bgColor: _selections[1] == false ? Color(0XFF1F3C88) : Colors.white,
                              text: 'Me.',
                              textColor: _selections[1] == true ? Colors.white : Color(0XFF1F3C88),
                            ),
                          ],
                          isSelected: _selections,
                          onPressed: (int index) {
                            setState(
                              () {
                                for (int buttonIndex = 0; buttonIndex < _selections.length; buttonIndex++) {
                                  if (buttonIndex == index) {
                                    _selections[buttonIndex] = !_selections[buttonIndex];
                                  } else {
                                    _selections[buttonIndex] = false;
                                  }
                                }
                              },
                            );
                          },
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: TextFormField(
                              controller: name,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Nom complet',
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 20.sp),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                GestureDetector(
                  onTap: () {
                    emailPageController.nextpage();
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
                  height: 5.h,
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
/*
 ToggleButtons(
                          selectedColor: selected == false ? Colors.white : Color(0XFF1F3C88),
                          color: selected == true ? Color(0XFF1F3C88) : Colors.white,
                          borderRadius: BorderRadius.circular(3.pt),
                          children: <Widget>[
                            Text(
                              'Mr.',
                              style: TextStyle(
                                color: selected == true ? Colors.white : Color(0XFF1F3C88),
                              ),
                            ),
                            Text('Me.'),
                          ],
                          isSelected: _selections,
                          onPressed: (int index) {
                            setState(
                              () {
                                setState(
                                  () {
                                    selected = !selected;
                                  },
                                );
                              },
                            );
                          },
                        ),
*/
