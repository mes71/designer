import 'package:designer/constants.dart';
import 'package:designer/data/models/course_model.dart';
import 'package:flutter/material.dart';

class ExploreCourseCard extends StatelessWidget {
  const ExploreCourseCard({Key? key, required this.model}) : super(key: key);

  final CourseModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14.0),
        child: Container(
          height: 120,
          width: 280,
          decoration: BoxDecoration(gradient: model.background),
          child: Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.courseSubtitle,
                      style: kCardSubtitleStyle,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      model.courseTitle,
                      style: kCardTitleStyle,
                    )
                  ],
                )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      model.illustration,
                      fit: BoxFit.cover,
                      height: 120,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
