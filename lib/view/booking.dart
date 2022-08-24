import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BookingPage extends StatelessWidget {
  List image = ["assets/images/booking1.png", "assets/images/booking2.png", "assets/images/booking3.png"];
  List<String> name = ['Hugo Fernandez', 'Samantha Blanc', 'Jonathan Dupres'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Mes Réservations',
              style: TextStyle(color: Color(0XFFF8F8F8), fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            Column(
              children: List.generate(
                3,
                (index) => Column(
                  children: [
                    Container(
                      height: 10.h,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            'Controle Antiparasitaire',
                            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Ven 02 Juin 2021 à 11h30',
                            style: TextStyle(
                              fontSize: 15.sp,
                            ),
                          ),
                          CircleAvatar(
                            radius: 5.5.pt,
                            backgroundImage: AssetImage('assets/images/booking1.png'),
                          ),
                        ],
                      ),
                    )
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
