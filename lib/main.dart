import 'package:designer/constants.dart';
import 'package:designer/ui/screens/HomeScreen.dart';
import 'package:designer/ui/widget/explore_course/ExploreCourse.dart';
import 'package:designer/ui/widget/home_nav_bar/HomeNavBar.dart';
import 'package:designer/ui/widget/recent_course/RecentCourseList.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:HomeScreen()
    );
  }
}
