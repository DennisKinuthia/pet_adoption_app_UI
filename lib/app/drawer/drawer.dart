import 'package:flutter/material.dart';
import 'package:profile/app/drawer/components/app_bar.dart';
import 'package:profile/app/drawer/components/menu_items.dart';
import 'package:profile/app/drawer/components/setting_logout_menu.dart';
import 'package:profile/utils/constants.dart';
import 'package:profile/utils/spacing_widgets.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            addVerticalSpace(60.0),
            const DrawerAppBar(),
            const Spacer(),
            const MenuItems(),
            const Spacer(),
            const SettingLogOutMenus(),
            addVerticalSpace(50.0),
          ],
        ),
      ),
    );
  }
}
