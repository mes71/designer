import 'package:designer/constants.dart';
import 'package:designer/generated/assets.dart';
import 'package:designer/data/models/course_model.dart';
import 'package:flutter/material.dart';

class RecentCourseCard extends StatefulWidget {
  const RecentCourseCard({Key? key, required this.model}) : super(key: key);
  final CourseModel model;

  @override
  State<RecentCourseCard> createState() => _RecentCourseCardState();
}

class _RecentCourseCardState extends State<RecentCourseCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Container(
            width: 240,
            height: 240,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(41),
                gradient: widget.model.background,
                boxShadow: [
                  BoxShadow(
                      color: widget.model.background.colors[0].withOpacity(0.3),
                      offset: Offset(0, 20),
                      blurRadius: 30),
                  BoxShadow(
                      color: widget.model.background.colors[1].withOpacity(0.3),
                      offset: Offset(0, 20),
                      blurRadius: 30),
                ]),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.model.courseSubtitle,
                    style: kCardSubtitleStyle,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    widget.model.courseTitle,
                    style: kCardTitleStyle,
                  ),
                  Expanded(
                      child: Image.asset(
                    Assets.illustrationsIllustration01,
                    fit: BoxFit.cover,
                  ))
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 42.0),
          child: Container(
            width: 60,
            height: 60,
            padding: EdgeInsets.all(10.5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      color: kShadowColor,
                      offset: Offset(0, 4),
                      blurRadius: 16.0)
                ]),
            child: Image.asset(
              widget.model.logo,
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}
