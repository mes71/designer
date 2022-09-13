import 'package:designer/constants.dart';
import 'package:designer/ui/widget/side_menu/SidebarItemModel.dart';
import 'package:flutter/material.dart';

class SideBarItem extends StatelessWidget {
  const SideBarItem({Key? key, required this.model}) : super(key: key);
  final SidebarItemModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: model.gradient),
          child: Center(
            child: model.icon,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Container(
          child: Text(
            model.title,
            style: kCalloutLabelStyle,
          ),
        )
      ],
    );
  }
}
