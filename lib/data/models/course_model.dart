import 'package:designer/generated/assets.dart';
import 'package:flutter/material.dart';

class CourseModel {
  CourseModel({
    required this.courseTitle,
    required this.courseSubtitle,
    required this.background,
    required this.illustration,
    this.logo = "",
  });

  final String courseTitle;
  final String courseSubtitle;
  final LinearGradient background;
  final String illustration;
  String logo;
}

// Recent Courses
var recentCoursesList = [
  CourseModel(
    courseTitle: "Flutter for Designers",
    courseSubtitle: "12 sections",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF00AEFF),
        Color(0xFF0076FF),
      ],
    ),
    illustration: Assets.illustrationsIllustration01,
    logo: Assets.logosFlutterlogo,
  ),
  CourseModel(
    courseTitle: "Prototyping with ProtoPie",
    courseSubtitle: "10 sections",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFD504F),
        Color(0xFFFF8181),
      ],
    ),
    illustration: Assets.illustrationsIllustration02,
    logo: Assets.logosProtopieLogo,
  ),
  CourseModel(
    courseTitle: "Build an app with SwiftUI",
    courseSubtitle: "22 sections",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF00E1EE),
        Color(0xFF001392),
      ],
    ),
    illustration: Assets.illustrationsIllustration03,
    logo: Assets.logosSwiftLogo,
  ),
];

// Explore Courses
var exploreCoursesList = [
  CourseModel(
    courseTitle: "Build an app with SwiftUI",
    courseSubtitle: "22 sections",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF5BCEA6),
        Color(0xFF1997AB),
      ],
    ),
    illustration: Assets.illustrationsIllustration04,
  ),
  CourseModel(
    courseTitle: "Build an app with SwiftUI",
    courseSubtitle: "22 sections",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFA931E5),
        Color(0xFF4B02FE),
      ],
    ),
    illustration: Assets.illustrationsIllustration05,
  ),
];

// Continue Watching Courses
var continueWatchingCoursesList = [
  CourseModel(
    courseTitle: "React for Designers",
    courseSubtitle: "SVG Animations",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF4E62CC),
        Color(0xFF202A78),
      ],
    ),
    illustration: Assets.illustrationsIllustration06,
  ),
  CourseModel(
    courseTitle: "Animating in Principle",
    courseSubtitle: "Multiple Scrolling",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFA7D75),
        Color(0xFFC23D61),
      ],
    ),
    illustration: Assets.illustrationsIllustration07,
  ),
];

// Course Sections
var courseSectionsList = [
  CourseModel(
    courseTitle: "Build an app with SwiftUI",
    courseSubtitle: "01 Section",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF00AEFF),
        Color(0xFF0076FF),
      ],
    ),
    illustration: Assets.illustrationsIllustration01,
  ),
  CourseModel(
    courseTitle: "Flutter for Designers",
    courseSubtitle: "02 Section",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFE477AE),
        Color(0xFFC54284),
      ],
    ),
    illustration: Assets.illustrationsIllustration08,
  ),
  CourseModel(
    courseTitle: "ProtoPie Prototyping",
    courseSubtitle: "03 Section",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFEA7E58),
        Color(0xFFCE4E27),
      ],
    ),
    illustration: Assets.illustrationsIllustration09,
  ),
  CourseModel(
    courseTitle: "UI Design Course",
    courseSubtitle: "04 Section",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF72CFD4),
        Color(0xFF42A0C2),
      ],
    ),
    illustration: Assets.illustrationsIllustration10,
  ),
  CourseModel(
    courseTitle: "React for Designers",
    courseSubtitle: "05 Section",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFF2E56),
        Color(0xFFCB012B),
      ],
    ),
    illustration: Assets.illustrationsIllustration11,
  ),
];

// Completed Courses
var completedCoursesList = [
  CourseModel(
    courseTitle: "Build an ARKit 2 App",
    courseSubtitle: "Certified",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFF6B94),
        Color(0xFF6B2E98),
      ],
    ),
    illustration: Assets.illustrationsIllustration12,
  ),
  CourseModel(
    courseTitle: "Swift Advanced",
    courseSubtitle: "Yet to be Certified",
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFDEC8FA),
        Color(0xFF4A1B6D),
      ],
    ),
    illustration: Assets.illustrationsIllustration13,
  ),
];
