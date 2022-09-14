import 'package:designer/constants.dart';
import 'package:designer/ui/widget/explore_course/ExploreCourse.dart';
import 'package:designer/ui/widget/home_nav_bar/HomeNavBar.dart';
import 'package:designer/ui/widget/recent_course/RecentCourseList.dart';
import 'package:designer/ui/widget/side_menu/Sidebar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late Animation<Offset> sidebarAnimation;
  late Animation<double> fadeAnimation;
  late AnimationController sidebarAnimationController;
  var sidebarHidden = true;

  @override
  void initState() {
    super.initState();

    sidebarAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));

    fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: sidebarAnimationController, curve: Curves.easeIn));

    sidebarAnimation =
        Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
            .animate(CurvedAnimation(
                parent: sidebarAnimationController, curve: Curves.easeIn));
  }

  @override
  void dispose() {
    sidebarAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: Stack(
          children: [
            SafeArea(
                child: Column(
              children: [
                HomeNavBar(
                  triggerAnimation: () {
                    setState(() {
                      sidebarHidden = !sidebarHidden;
                    });
                    sidebarAnimationController.forward();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Recents',
                        style: kLargeTitleStyle,
                      ),
                      const Text('23 coruses, more coming')
                    ],
                  ),
                ),
                const RecentCourseList(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 25, 20, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Explore',
                        style: kTitle1Style,
                      )
                    ],
                  ),
                ),
                const ExploreCourseList()
              ],
            )),
            IgnorePointer(
              ignoring: sidebarHidden,
              child: Stack(
                children: [
                  FadeTransition(
                    opacity: fadeAnimation,
                    child: GestureDetector(
                      child: Container(
                        color: Color.fromRGBO(36, 38, 41, 0.4),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                      onTap: () {
                        setState(() {
                          sidebarHidden = !sidebarHidden;
                        });
                        sidebarAnimationController.reverse();
                      },
                    ),
                  ),
                  SlideTransition(
                    position: sidebarAnimation,
                    child: const SafeArea(
                      bottom: false,
                      child: SideBar(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
