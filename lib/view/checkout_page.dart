import 'package:easyclick1/controller/checkout_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  CheckOutController checkOutController = Get.put(CheckOutController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 2.h,
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
                  ),
                ),
                Container(
                  height: 4.5.h,
                  width: 15.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/service.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  '1 aide ménagère,\nmatériels inclus',
                  style: TextStyle(color: Color(0XFF1F3C88), fontWeight: FontWeight.w600, fontSize: 16.sp),
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.2.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 22.sp,
                        color: Color(0XFF1F3C88),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '02-06-2022',
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_sharp,
                        size: 22.sp,
                        color: Color(0XFF1F3C88),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Durée',
                            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '6 heures',
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.message,
                        size: 22.sp,
                        color: Color(0XFF1F3C88),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Instructions',
                            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmod tempor incididunt ut labore et\ndolore magna aliqua.',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Divider(
              thickness: 0.2.h,
              color: Colors.grey.shade200,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.7.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Paiement',
                    style: TextStyle(fontSize: 16.5.sp),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  RadioListTile(
                    contentPadding: EdgeInsets.only(right: 10.w),
                    value: 1,
                    groupValue: checkOutController.isSelected,
                    activeColor: Colors.black,
                    title: Text('Apple   / Google Pay\nPaiement en un clic'),
                    selected: checkOutController.isSelected,
                    onChanged: (bool) {
                      checkOutController.RadioSelected();
                    },
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  RadioListTile(
                    contentPadding: EdgeInsets.only(right: 10.w),
                    value: 2,
                    groupValue: checkOutController.isSelected,
                    onChanged: (bool) {
                      checkOutController.RadioSelected();
                    },
                    selected: checkOutController.isSelected,
                    activeColor: Colors.black,
                    title: Text('Carte de crédit\n2345 xxxx xxxx 6789'),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 7.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.pt),
                        border: Border.all(
                          color: Color(0XFF1F3C88),
                        ),
                        color: Color(0XFFD9E3F8),
                      ),
                      child: Center(
                        child: Text(
                          'Ajouter une méthode de paiement',
                          style: TextStyle(color: Color(0XFF1F3C88), fontSize: 18.sp),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Divider(
              thickness: 0.2.h,
              color: Colors.grey.shade300,
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.5.h),
              child: GestureDetector(
                onTap: () {
                  checkOutController.navigate();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Color(0XFF1F3C88),
                          ),
                        ),
                        Text(
                          ' 20€',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF1F3C88),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: Container(
                        height: 5.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                          color: Color(0XFFEE6F57),
                          borderRadius: BorderRadius.circular(3.3.pt),
                        ),
                        child: Center(
                          child: Text(
                            'Confirmer',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
