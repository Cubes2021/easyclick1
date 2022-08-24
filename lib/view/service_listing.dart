import 'package:easyclick1/controller/listing_controller.dart';
import 'package:easyclick1/widgets/textButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ServiceListingPage extends StatefulWidget {
  const ServiceListingPage({Key? key}) : super(key: key);

  @override
  _ServiceListingPageState createState() => _ServiceListingPageState();
}

class _ServiceListingPageState extends State<ServiceListingPage> {
  ListingController listingController = Get.put(
    ListingController(),
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0XFFEE6F57),
                      size: 20.sp,
                    ),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text(
                    'Aide ménagère à temps\npartiel',
                    style: TextStyle(color: Color(0XFF1F3C88), fontWeight: FontWeight.bold, fontSize: 18.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                '1 aide ménagère',
                style: TextStyle(color: Color(0XFF4F4F4F), fontSize: 20.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '10 % de réduction sur la réservation hebdomadaire',
                    style: TextStyle(color: Color(0XFFEE6F57), fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Text(
                    '1 aide ménagère, matériels non-inclus',
                    style: TextStyle(color: Color(0XFF4F4F4F), fontWeight: FontWeight.bold, fontSize: 17.sp),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Color(0XFFF1C40F)),
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
              Container(
                width: 30.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: Color(0XFFD9E3F8),
                  borderRadius: BorderRadius.circular(2.pt),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        listingController.addInCart();
                      },
                      icon: Icon(
                        Icons.add,
                        color: Color(0XFF525252),
                      ),
                    ),
                    Obx(
                      () => Text(
                        listingController.add.value.toString(),
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Color(0XFF9D9D9D),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        listingController.removeFromCart();
                      },
                      icon: Icon(
                        Icons.remove,
                        color: Color(0XFF525252),
                      ),
                    ),
                  ],
                ),
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
              Spacer(),
              SizedBox(
                height: 1.5.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '10 % de réduction sur la réservation hebdomadaire',
                    style: TextStyle(color: Color(0XFFEE6F57), fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                  SizedBox(
                    height: 0.5.h,
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
                        '4.57 (11.7k)',
                        style: TextStyle(color: Color(0XFF878787), fontSize: 17.sp),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Row(
                children: [
                  Container(
                    height: 12.h,
                    width: 14.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/second.png'), fit: BoxFit.fill),
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
                'A partir de 25€',
                style: TextStyle(color: Color(0XFF1F3C88), fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
              Container(
                width: 30.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: Color(0XFF1F3C88),
                  borderRadius: BorderRadius.circular(2.pt),
                ),
                child: Center(child: Text('Ajouter', style: TextStyle(color: Colors.white))),
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
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
