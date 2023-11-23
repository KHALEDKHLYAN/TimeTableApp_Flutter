
import 'package:flutter/material.dart';
import 'package:timetable_app/screen/fixed_datable.dart';
import 'package:timetable_app/screen/scrollable_col.dart';

Widget safeAreaBuilder(BuildContext context) { // Fixed the method name here
  return Scaffold(body:SafeArea(
    child: SingleChildScrollView(
      child: Row(
        children: [
          FixedColumnWidget(),
          ScrollableColumnWidget(),
        ],
      ),
    ),
  ));
}
