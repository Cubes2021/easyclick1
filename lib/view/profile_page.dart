import 'package:easyclick1/view/edit_profile.dart';
import 'package:easyclick1/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
                      height: 1.5.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfile(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 5.pt,
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
              children: [
                ListTile(
                  minVerticalPadding: 0.3.h,
                  onTap: () {},
                  leading: Icon(Icons.help_outline_outlined, color: Color(0XFFEE6F57), size: 25.sp),
                  title: Text(
                    'Aide',
                    style: TextStyle(fontSize: 17.sp),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  minVerticalPadding: 0.3.h,
                  leading: Icon(Icons.card_travel_outlined, color: Color(0XFFEE6F57), size: 25.sp),
                  title: Text(
                    'Mes réservations',
                    style: TextStyle(fontSize: 17.sp),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  minVerticalPadding: 0.3.h,
                  leading: Icon(Icons.account_balance_wallet_outlined, color: Color(0XFFEE6F57), size: 25.sp),
                  title: Text(
                    'Mes méthodes de paiement',
                    style: TextStyle(fontSize: 17.sp),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  minVerticalPadding: 0.3.h,
                  leading: Icon(Icons.info_outline_rounded, color: Color(0XFFEE6F57), size: 25.sp),
                  title: Text(
                    'A propos de EasyClic',
                    style: TextStyle(fontSize: 17.sp),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
