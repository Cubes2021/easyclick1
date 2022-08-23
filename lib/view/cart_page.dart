import 'package:easyclick1/controller/listing_controller.dart';
import 'package:easyclick1/widgets/custom_button.dart';
import 'package:easyclick1/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  ListingController listingController = Get.put(ListingController());
  final instruction = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      )),
                  Text(
                    'Récapitulatif',
                    style: TextStyle(color: Color(0XFF1F3C88), fontWeight: FontWeight.bold, fontSize: 17.sp),
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1 aide ménagère, matériels non-inclus',
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  Text(
                    '20€ ',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF1F3C88),
                    ),
                  ),
                ],
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
              SizedBox(
                height: 2.h,
              ),
              Text(
                '2 heures x 1',
                style: TextStyle(fontSize: 15.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Adhésion GRATUITE Gold',
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  Text(
                    '0€ ',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF1F3C88),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                '2 mois',
                style: TextStyle(fontSize: 14.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 4.h,
                width: 20.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0XFFE74C3C),
                  ),
                  color: Color(0XFFF1CDC9),
                  borderRadius: BorderRadius.circular(2.pt),
                ),
                child: Center(
                  child: Text(
                    'Retirer',
                    style: TextStyle(
                      color: Color(0XFFE74C3C),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text('Instructions'),
              Container(
                  height: 15.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.5.pt),
                    color: Color(0XFFEEEEEE),
                  ),
                  child: CustomTextField(
                    TextEditingController: instruction,
                    string: 'Entrer les instructions',
                  )),
              SizedBox(
                height: 2,
              ),
              Divider(
                thickness: 0.1.h,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'Fréquemment ajoutés ensemble',
                style: TextStyle(
                  color: Color(0XFF1F3C88),
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) => Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 1.w),
                                    height: 12.h,
                                    width: 25.w,
                                    color: Colors.blue,
                                  ),
                                  Positioned(
                                    top: 10.h,
                                    left: 13.w,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0XFFEE6F57),
                                        borderRadius: BorderRadius.circular(3.pt),
                                      ),
                                      margin: EdgeInsets.symmetric(horizontal: 1.w),
                                      width: 10.w,
                                      height: 5.h,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.add),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 1.w),
                                height: 8.h,
                                width: 25.w,
                                color: Colors.black,
                              ),
                            ],
                          )),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomButton(text: 'Payer')
            ],
          ),
        ),
      ),
    );
  }
}
