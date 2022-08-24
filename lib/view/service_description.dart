import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ServiceDescriptionPage extends StatefulWidget {
  const ServiceDescriptionPage({Key? key}) : super(key: key);

  @override
  _ServiceDescriptionPageState createState() => _ServiceDescriptionPageState();
}

class _ServiceDescriptionPageState extends State<ServiceDescriptionPage> {
  List<Image> image = [
    Image.asset(
      'assets/images/slideimage.png',
    ),
    Image.asset(
      'assets/images/service.png',
    ),
    Image.asset(
      'assets/images/second.png',
    ),
  ];
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                CarouselSlider(
                  items: image,
                  options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(
                          () {
                            isSelected = index;
                          },
                        );
                      },
                      autoPlay: false,
                      initialPage: 0,
                      disableCenter: false,
                      enlargeCenterPage: false,
                      enableInfiniteScroll: true),
                ),
                Positioned(
                  bottom: 15.h,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back),
                      ),
                      Text(
                        'Easy Clic Easy Clean\nPromise',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20.sp),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 5.h,
                  right: 0.w,
                  left: 0.w,
                  child: Row(
                    children: List.generate(
                      image.length,
                      (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        height: 1.h,
                        width: 10.w,
                        decoration: BoxDecoration(
                          color: isSelected == index ? Color(0XFFEE6F57) : Color(0XFFFFFFFF),
                          borderRadius: BorderRadius.circular(3.pt),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text('Part-time cleaners'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
