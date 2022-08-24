import 'package:calendar_builder/calendar_builder.dart';
import 'package:flutter/material.dart';
//
// class CustomCalender extends StatefulWidget {
//   const CustomCalender({Key? key}) : super(key: key);
//
//   @override
//   _CustomCalenderState createState() => _CustomCalenderState();
// }
//
// class _CustomCalenderState extends State<CustomCalender> {
//   DateTime dateTime = DateTime.now();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: CbMonthBuilder(
//       cbConfig: CbConfig(
//         startDate: DateTime.now(),
//         endDate: DateTime.fromMicrosecondsSinceEpoch(isUtc: false, 1640901600000000),
//         selectedDate: DateTime.now(),
//         selectedYear: DateTime.now(),
//       ),
//     ));
//   }
// }

class CustomCalender extends StatefulWidget {
  const CustomCalender({Key? key}) : super(key: key);

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            // _button('Play video from File'),
            _button(
              'Default / Simple Month Builder',
              onPressed: () => Navigator.of(context).pushNamed('/month_builder'),
            ),
            _button(
              'Customized Month Builder',
              onPressed: () => Navigator.of(context).pushNamed('/customized_month_builder'),
            ),
            _button(
              'Custom Month Builder',
              onPressed: () => Navigator.of(context).pushNamed('/custom_month_builder'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _button(String text, {void Function()? onPressed}) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: OutlinedButton(
          onPressed: onPressed ?? () {},
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
