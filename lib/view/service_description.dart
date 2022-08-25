import 'package:carousel_slider/carousel_slider.dart';
import 'package:easyclick1/controller/service_des_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/textButton.dart';

class ServiceDescriptionPage extends StatefulWidget {
  const ServiceDescriptionPage({Key? key}) : super(key: key);

  @override
  _ServiceDescriptionPageState createState() => _ServiceDescriptionPageState();
}

class _ServiceDescriptionPageState extends State<ServiceDescriptionPage> {
  ServiceController serviceController = Get.put(
    ServiceController(),
  );
  List<Container> image = [
    Container(
      height: 30.h,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/slideimage.png',
            ),
            fit: BoxFit.fill),
      ),
    ),
    Container(
      height: 30.h,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/service.png',
            ),
            fit: BoxFit.fill),
      ),
    ),
    Container(
      height: 30.h,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/second.png',
            ),
            fit: BoxFit.fill),
      ),
    ),
  ];
  final imagecontroller = CarouselController();
  List<String> offer = ['Save 10% in every order', 'Flat 24 AED Off', 'Save 10% in every order'];
  List<String> offers = ['Get Plus for FREE', 'Use Code EC24', 'Get Plus for FREE'];

  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 30.h,
              width: double.infinity,
              child: Stack(
                children: [
                  CarouselSlider(
                    carouselController: imagecontroller,
                    items: image,
                    options: CarouselOptions(
                        padEnds: false,
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
                    bottom: 20.h,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        Text(
                          'Easy Clic Easy Clean Promise',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20.sp),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0.w,
                    right: 0.w,
                    bottom: 5.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Part-time cleaners',
                          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0XFFF1C40F),
                            ),
                            Text('4.57(22.7k)')
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Container(
                    height: 7.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.pt),
                      color: Color(0XFFD9E3F8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('135,892 bookings in Dubai this year', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.sp)),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/images/files.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        offer.length,
                        (index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.w),
                          height: 6.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(3.pt),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  offer[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                Text(
                                  offers[index],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '10 % de réduction sur la réservation hebdomadaire',
                              style: TextStyle(color: Color(0XFFEE6F57), fontWeight: FontWeight.bold, fontSize: 15.sp),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              '1 aide ménagère, matériels non-inclus',
                              style: TextStyle(color: Color(0XFF4F4F4F), fontWeight: FontWeight.bold, fontSize: 17.sp),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0XFFF1C40F),
                                ),
                                Text(
                                  '4.57 (22.7k)',
                                  style: TextStyle(color: Color(0XFF878787), fontSize: 17.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 12.h,
                              width: 14.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/service.png'), fit: BoxFit.fill),
                              ),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Container(
                              height: 12.h,
                              width: 28.h,
                              child: Column(children: [
                                Text(
                                  'Nettoyage du sol, de la vaisselle, de l\'évier etet des toilettes, rangement des différents espaces du domicile',
                                  style: TextStyle(fontSize: 15.sp, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  'Produits de nettoyage & aspirateur à fournir par vos soins',
                                  style: TextStyle(fontSize: 15.sp, color: Colors.black),
                                ),
                              ]),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButtons(
                              onpressed: () {},
                              textStyle: TextStyle(fontWeight: FontWeight.w600),
                              text: 'Voir les détails',
                              color: Color(0XFF1F3C88),
                            ),
                            SizedBox(
                              width: 0.7.w,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Color(0XFFEE6F57),
                                  size: 18.sp,
                                )),
                          ],
                        ),
                        Text(
                          'A partir de 20€',
                          style: TextStyle(color: Color(0XFF1F3C88), fontSize: 16.sp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            serviceController.countCart();
                          },
                          child: Container(
                            width: 30.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                              color: Color(0XFF1F3C88),
                              borderRadius: BorderRadius.circular(2.pt),
                            ),
                            child: Center(
                              child: Text(
                                'Add',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 7.w,
                            ),
                            Text(
                              '5 options',
                              style: TextStyle(
                                color: Color(0XFFEE6F57),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
