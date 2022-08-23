import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EmailMobilePage extends StatefulWidget {
  const EmailMobilePage({Key? key}) : super(key: key);

  @override
  _EmailMobilePageState createState() => _EmailMobilePageState();
}

class _EmailMobilePageState extends State<EmailMobilePage> {
  final email = TextEditingController();
  final name = TextEditingController();
  bool selected = true;
  List<bool> _selections = List.generate(2, (_) => false);

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
                    'S’enregistrer sur Easy',
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
                  inputDecoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.pt),
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
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'E-mail',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 20.sp),
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
                        selectedColor: selected == false ? Colors.red : Colors.white,
                        color: selected == true ? Colors.red : Colors.white,
                        borderRadius: BorderRadius.circular(3.pt),
                        children: <Widget>[
                          Icon(Icons.boy_outlined),
                          Icon(Icons.girl_outlined),
                        ],
                        isSelected: _selections,
                        onPressed: (int index) {
                          setState(
                            () {
                              _selections[index] = !_selections[index];
                            },
                          );
                        },
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Nom complet',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 20.sp),
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
