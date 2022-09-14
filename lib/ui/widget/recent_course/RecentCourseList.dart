import 'package:designer/ui/widget/recent_course/RecentCourseCard.dart';
import 'package:designer/data/models/course_model.dart';
import 'package:flutter/material.dart';

class RecentCourseList extends StatefulWidget {
  const RecentCourseList({Key? key}) : super(key: key);

  @override
  State<RecentCourseList> createState() => _RecentCourseListState();
}

class _RecentCourseListState extends State<RecentCourseList> {
  int currentPage = 0;

  Widget updateIndicator() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: recentCoursesList.map((item) {
          var index = recentCoursesList.indexOf(item);
          print('index  is $index');
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 6.0),
            width: 7,
            height: 7,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == currentPage
                    ? Color(0XFF0971FE)
                    : Color(0xFFA6AEBD)),
          );
        }).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          width: double.infinity,
          child: PageView.builder(
            itemCount: recentCoursesList.length,
            controller: PageController(initialPage: 0, viewportFraction: 0.63),
            itemBuilder: (context, index) =>
                Opacity(
                  opacity: currentPage == index ?1.0:0.5,
                    child: RecentCourseCard(model: recentCoursesList[index])),
            onPageChanged: (index) {
              print(index);
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
        updateIndicator()
      ],
    );
  }
}
