import 'package:easyclick1/view/profile_page.dart';
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

  List<Widget> Screen = [SearchPage(), SubCatagariesPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 8.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
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

                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => Screen[index],
                          //   ),
                          // );
                        },
                        icon: Image.asset('assets/images/search.png'),
                      ),
                      Text(
                        'Recherche',
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

/*

              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ServiceListingPage(),
                        ),
                      );
                    },
                    icon: Image.asset('assets/images/notes.png'),
                  ),
                  Text(
                    'Réservations',
                    style: TextStyle(
                      color: Color(0XFF1F3C88),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ),
                      );
                    },
                    icon: Image.asset('assets/images/Frame.png'),
                  ),
                  Text(
                    'Profil',
                    style: TextStyle(
                      color: Color(0XFF1F3C88),
                    ),
                  )
                ],
              ),
 */
