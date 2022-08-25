import 'package:easyclick1/controller/profile_update_controller.dart';
import 'package:easyclick1/widgets/custom_button.dart';
import 'package:easyclick1/widgets/textButton.dart';
import 'package:easyclick1/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  ProfileUpdateController profileUpdateController = Get.put(ProfileUpdateController());
  final name = TextEditingController();
  final email = TextEditingController();
  final phonenumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    profileUpdateController.navigate();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0XFFEE6F57),
                    size: 20.sp,
                  ),
                ),
                Text(
                  'Modifier le profil',
                  style: TextStyle(color: Color(0XFF1F3C88), fontWeight: FontWeight.bold, fontSize: 17.sp),
                )
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.5.w),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 5.pt,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Container(
                    height: 4.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      color: Color(0XFF1F3C88),
                      borderRadius: BorderRadius.circular(3.pt),
                    ),
                    child: Center(
                      child: Text(
                        'Mettre à jour',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 2.5.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Column(
                children: [
                  CustomTextField(Height: 7.h, TextEditingController: name, string: 'Enter Name'),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  CustomTextField(Height: 7.h, TextEditingController: email, string: 'Enter Email'),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  CustomTextField(Height: 7.h, TextEditingController: phonenumber, string: 'Enter Number'),
                ],
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: CustomButton(
                text: 'Mettre à jour',
                ontap: () {},
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            TextButtons(
              text: 'Annuler',
              color: Color(0XFF1F3C88),
              textStyle: TextStyle(color: Color(0XFF1F3C88), fontWeight: FontWeight.w600),
              onpressed: () {
                profileUpdateController.navigate();
              },
            )
          ],
        ),
      ),
    );
  }
}
