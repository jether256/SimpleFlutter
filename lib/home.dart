import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:simple_responsive_flutterweb/side_menu_controller.dart';
import 'package:simple_responsive_flutterweb/widgets/responsive.dart';
import 'package:simple_responsive_flutterweb/widgets/side_menu.dart';

import 'dashboard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final sideMenuController = Provider.of<SideMenuController>(context);

    return Scaffold(
        key: sideMenuController.scaffoldKey,
        drawer: const SideMenu(),
        body: SafeArea(
          child: Row(
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  child: SideMenu(),
                ),
              const Expanded(flex: 5, child: Dashboard())
            ],
          ),
        ));
  }
}
