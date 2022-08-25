import 'package:easyclick1/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List image = ['assets/images/manage.png', 'assets/images/home_services.png', 'assets/images/haircut.png', 'assets/images/beauty.png'];
  final address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 3.h,
            ),
            Text(
              'De quel type de service\navez-vous besoin ?',
              style: TextStyle(
                color: Color(0XFF1F3C88),
                fontWeight: FontWeight.w600,
                fontSize: 20.sp,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  height: 7.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.pt),
                    color: Color(0XFFEEEEEE),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Color(0XFFEE6F57),
                            size: 20.sp,
                          )),
                      Expanded(
                        child: TextFormField(
                          controller: address,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Entrez votre adresse',
                            hintStyle: TextStyle(color: Color(0XFF9D9D9D), fontSize: 15.sp),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.my_location_outlined,
                            color: Color(0XFF1F3C88),
                            size: 20.sp,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                GridView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomBar(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 2.h),
                        height: 25.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              image[index],
                            ),
                          ),
                        ),
                        child: Text(''),
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
