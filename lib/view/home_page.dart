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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'De quel type de service\navez-vous besoin ?',
                style: TextStyle(
                  color: Color(0XFF1F3C88),
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                ),
              ),
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
              GridView.builder(
                itemCount: 4,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 5.h),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      SizedBox(
                        child: SizedBox(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BottomBar(),
                                ),
                              );
                            },
                            child: Container(
                              height: 20.h,
                              width: 20.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    image[index],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
