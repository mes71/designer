import 'package:designer/constants.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ContinueWatchingScreen extends StatefulWidget {
  const ContinueWatchingScreen({Key? key}) : super(key: key);

  @override
  State<ContinueWatchingScreen> createState() => _ContinueWatchingScreenState();
}

class _ContinueWatchingScreenState extends State<ContinueWatchingScreen> {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(34.0)),
      color: kCardPopupBackgroundColor,
      boxShadow: [
        const BoxShadow(
            color: kShadowColor, offset: Offset(0, -12), blurRadius: 32.0)
      ],
      minHeight: 85.0,
      maxHeight: MediaQuery.of(context).size.height * 0.75,
      panel: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 16.0),
            child: Container(
              width: 42.0,
              height: 4.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0),
                  color: const Color(0xFFC5CBD6)),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              'Continue Watching',
              style: kTitle2Style,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              'Certificates',
              style: kTitle2Style,
            ),
          )
        ],
      ),
    );
  }
}
