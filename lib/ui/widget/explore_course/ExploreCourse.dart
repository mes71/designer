import 'package:designer/data/models/course_model.dart';
import 'package:designer/ui/widget/explore_course/ExploreCourseCard.dart';
import 'package:flutter/material.dart';

class ExploreCourseList extends StatefulWidget {
  const ExploreCourseList({Key? key}) : super(key: key);

  @override
  State<ExploreCourseList> createState() => _ExploreCourseListState();
}

class _ExploreCourseListState extends State<ExploreCourseList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: exploreCoursesList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 20.0 : 0.0),
            child: ExploreCourseCard(model: exploreCoursesList[index]),
          );
        },
      ),
    );
  }
}
