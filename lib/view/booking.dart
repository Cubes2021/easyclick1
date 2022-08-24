import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

List image = ["assets/images/booking1.png", "assets/images/booking2.png", "assets/images/booking3.png"];
List<String> name = ['Hugo Fernandez', 'Samantha Blanc', 'Jonathan Dupres'];
Map services = {
  'service': ['Pest Control', 'Home, Sofa & Carpet Deep C...', 'Pest Control'],
  'time': [' Fri 02 June 2021 at 11:30 am', 'Fri 08 Jan 2021 at 2:00 pm', 'Fri 02 June 2021 at 11:30 am']
};

class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Text(
                  'Mes Réservations',
                  style: TextStyle(color: Color(0XFF1F3C88), fontWeight: FontWeight.bold, fontSize: 20.sp),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Column(
                children: List.generate(
                  3,
                  (index) => Container(
                    height: 30.h,
                    width: double.infinity,
                    color: Color(0XFFF8F8F8),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    services['service'][index],
                                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    services['time'][index],
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 3.h,
                                width: 22.w,
                                decoration: BoxDecoration(
                                  color: Color(0XFF2ECC71),
                                  borderRadius: BorderRadius.circular(4.pt),
                                ),
                                child: Center(
                                  child: Text(
                                    'Job Completed',
                                    style: TextStyle(fontSize: 13.sp, color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5.5.pt,
                                backgroundImage: AssetImage(
                                  image[index],
                                ),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name[index],
                                    style: TextStyle(fontSize: 16.sp, color: Color(0XFF1F3C88), fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0XFFF1C40F),
                                        size: 17.sp,
                                      ),
                                      Text(
                                        '4.58(11.7k)',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Color(0XFF878787),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                            height: 5.h,
                            width: double.infinity,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.help_outline_outlined,
                                          color: Color(0XFF878787),
                                        ),
                                        Text(
                                          'Need Help',
                                          style: TextStyle(
                                            color: Color(0XFF878787),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.receipt,
                                          color: Color(0XFF878787),
                                        ),
                                        Text(
                                          'View Project',
                                          style: TextStyle(
                                            color: Color(0XFF878787),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.help_outline_outlined,
                                          color: Color(0XFF878787),
                                        ),
                                        Text(
                                          'Message Provider',
                                          style: TextStyle(
                                            color: Color(0XFF878787),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
