import 'package:designer/constants.dart';
import 'package:designer/generated/assets.dart';
import 'package:designer/ui/widget/side_menu/SidebarItem.dart';
import 'package:designer/ui/widget/side_menu/SidebarItemModel.dart';
import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 35.0, horizontal: 20),
      width: width * 0.8,
      height: height,
      decoration: BoxDecoration(
          color: kSidebarBackgroundColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(34.0))),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(Assets.imagesProfile),
                radius: 21,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mojtaba Eshaghi',
                    style: kHeadlineLabelStyle,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text('I Love Programming')
                ],
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          ...List.generate(
              sideBarItems.length,
              (index) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  child: SideBarItem(model: sideBarItems[index]))),
          const Spacer(),
          Column(
            children: [
              Text(
                'Connection to developer',
                style: kHeadlineLabelStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
