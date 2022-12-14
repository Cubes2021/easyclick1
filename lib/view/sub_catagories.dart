import 'package:easyclick1/controller/sub_catagories.dart';
import 'package:easyclick1/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SubCatagariesPage extends StatefulWidget {
  const SubCatagariesPage({Key? key}) : super(key: key);

  @override
  _SubCatagariesPageState createState() => _SubCatagariesPageState();
}

class _SubCatagariesPageState extends State<SubCatagariesPage> {
  SubCatagoriesController subCatagoriesController = Get.put(SubCatagoriesController());
  final search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        subCatagoriesController.navigate();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Color(0XFFEE6F57),
                        size: 20.sp,
                      )),
                  Text(
                    'Manage',
                    style: TextStyle(color: Color(0XFF1F3C88), fontWeight: FontWeight.bold, fontSize: 17.sp),
                  )
                ],
              ),
              ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(radius: 4.pt, backgroundColor: Colors.grey),
                    title: Row(
                      children: [
                        Text(
                          "Nettoyage",
                          style: TextStyle(color: Colors.black, fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " ?? sec/blanchisserie",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                          ),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      "Cat??gorie",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.sp,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
