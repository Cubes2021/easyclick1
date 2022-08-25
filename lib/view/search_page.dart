import 'package:easyclick1/controller/listing_controller.dart';
import 'package:easyclick1/controller/search_controller.dart';
import 'package:easyclick1/widgets/bottom_bar.dart';
import 'package:easyclick1/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  SearchController searchController = Get.put(
    SearchController(),
  );
  List<String> image = [
    'assets/images/slideimage.png',
    'assets/images/service.png',
    'assets/images/second.png',
  ];
  final search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 10.h,
              width: double.infinity,
              color: Color(0XFF1F3C88),
              child: Column(
                children: [
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            prefixIcon: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Color(0XFFEE6F57),
                                )),
                            TextEditingController: search,
                            string: 'Ménage',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    searchController.navigatePage();
                  },
                  leading: CircleAvatar(
                    radius: 4.pt,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(
                      image[index],
                    ),
                  ),
                  title: Row(
                    children: [
                      Text(
                        "Nettoyage",
                        style: TextStyle(color: Colors.black, fontSize: 15.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " à sec/blanchisserie",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    "Catégorie",
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
    );
  }
}
