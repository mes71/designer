import 'package:designer/constants.dart';
import 'package:designer/generated/assets.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({Key? key, required this.triggerAnimation})
      : super(key: key);

  final VoidCallback triggerAnimation;

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SideBarButton(triggerAnimation: widget.triggerAnimation),
          SearchField(),
          Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          SizedBox(
            width: 16,
          ),
          CircleAvatar(
            radius: 18.0,
            backgroundImage: AssetImage(Assets.imagesProfile),
          )
        ],
      ),
    );
  }
}

class SideBarButton extends StatelessWidget {
  const SideBarButton({
    Key? key,
    required this.triggerAnimation,
  }) : super(key: key);

  final VoidCallback triggerAnimation;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        constraints: const BoxConstraints(maxWidth: 40, maxHeight: 40),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.0),
              boxShadow: const [
                BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 12),
                    blurRadius: 16.0)
              ]),
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
          child: Image.asset(
            Assets.iconsIconSidebar,
            color: kPrimaryLabelColor,
          ),
        ),
        onPressed: triggerAnimation);
  }
}

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(left: 12, right: 33),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.0),
            boxShadow: const [
              BoxShadow(
                  color: kShadowColor, offset: Offset(0, 12), blurRadius: 16.0)
            ]),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextField(
          cursorColor: kPrimaryLabelColor,
          decoration: InputDecoration(
              icon: const Icon(
                Icons.search,
                color: kPrimaryLabelColor,
                size: 20.0,
              ),
              border: InputBorder.none,
              hintText: 'Search for courses',
              hintStyle: kSearchPlaceholderStyle),
          style: kSearchTextStyle,
          onChanged: (value) {},
        ),
      ),
    ));
  }
}
