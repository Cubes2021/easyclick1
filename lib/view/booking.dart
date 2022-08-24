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
              style: TextStyle(color: Color(0XFF1F3C88), fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            Column(
              children: List.generate(
                3,
                (index) => Column(
                  children: [
                    Container(
                      height: 6.h,
                      width: double.infinity,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
