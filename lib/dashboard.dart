import 'package:flutter/material.dart';
import 'package:simple_responsive_flutterweb/widgets/responsive.dart';
import 'dashboard/desktop/desktop.dart';
import 'dashboard/mobile/mobile.dart';
import 'dashboard/tablet/tablet.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: DesktopDashboard(),
      mobile: MobileDashboard(),
      tablet: TabletDashboard(),
    );
  }
}
