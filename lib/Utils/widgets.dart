import 'package:alice_care_admin/Utils/color_theme.dart';
import 'package:flutter/material.dart';

///A widget that displays the app logo
aliveLogo() {
  return Container(
    color: ColorTheme.secondaryColor,
    height: 50,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "images/care.png",
            height: 40,
          ),
        ),
        const Text(
          'AliveCare',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}

///A widget that displays the NabBar

class NavBarTab extends StatelessWidget {
  const NavBarTab({Key? key, this.tabTitle, this.icon, this.onTap})
      : super(key: key);

  final String? tabTitle;
  final IconData? icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListTile(
        onTap: onTap,
        tileColor: ColorTheme.primaryColor,
        hoverColor: ColorTheme.secondaryColor,
        mouseCursor: MaterialStateMouseCursor.clickable,
        title: Text(
          tabTitle!,
          style: const TextStyle(color: ColorTheme.whiteColor),
        ),
        leading: Icon(
          icon!,
          color: ColorTheme.whiteColor,
        ),
      ),
    );
  }
}
