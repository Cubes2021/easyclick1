import 'package:easyclick1/controller/profile_controller.dart';
import 'package:easyclick1/view/edit_profile.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfilePage extends StatelessWidget {
  ProfileController profileController = Get.put(ProfileController());
  List icons = [
    Icon(Icons.help_outline_outlined, color: Color(0XFFEE6F57), size: 25.sp),
    Icon(Icons.card_travel_outlined, color: Color(0XFFEE6F57), size: 25.sp),
    Icon(Icons.account_balance_wallet_outlined, color: Color(0XFFEE6F57), size: 25.sp),
    Icon(Icons.info_outline_rounded, color: Color(0XFFEE6F57), size: 25.sp),
  ];
  List name = ['Aide', 'Mes réservations', 'Mes méthodes de paiement', 'A propos de EasyClic'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Color(0XFF1F3C88),
              height: 20.h,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'Profil',
                      style: TextStyle(color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 4.pt,
                            backgroundImage: AssetImage('assets/images/service.png'),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tarek Bouaziz',
                                style: TextStyle(color: Colors.white, fontSize: 16.sp),
                              ),
                              Text(
                                'bouaziz10@gmail.com',
                                style: TextStyle(color: Color(0XFF5F81DC), fontSize: 15.sp),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: List.generate(
                name.length,
                (index) => ListTile(
                  minVerticalPadding: 0.3.h,
                  onTap: () {
                    profileController.navigate();
                  },
                  leading: icons[index],
                  title: Text(
                    name[index],
                    style: TextStyle(fontSize: 17.sp),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
