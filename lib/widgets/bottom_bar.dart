import 'package:easyclick1/view/booking.dart';
import 'package:easyclick1/view/booking_details.dart';
import 'package:easyclick1/view/home_page.dart';
import 'package:easyclick1/view/profile_page.dart';
import 'package:easyclick1/view/review_page.dart';
import 'package:easyclick1/view/search_page.dart';
import 'package:easyclick1/view/service_listing.dart';
import 'package:easyclick1/view/sub_catagories.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var BottomSelect = 0;
  List<String> menu = ['Research', 'Booking', 'Profile'];
  List<String> icon = ['assets/images/search.png', 'assets/images/notes.png', 'assets/images/Frame.png'];

  List<Widget> Screen = [
    // HomePage(),
    SearchPage(),
    BookingPage(),
    ProfilePage(),
    ReviewPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 8.h,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 4.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              3,
              (index) => Column(
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print(index);
                          print('index');
                          setState(
                            () {
                              BottomSelect = index;
                            },
                          );
                        },
                        icon: Image.asset(
                          icon[index],
                        ),
                      ),
                      Text(
                        menu[index],
                        style: TextStyle(
                          color: Color(0XFF1F3C88),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Screen[BottomSelect],
    );
  }
}
