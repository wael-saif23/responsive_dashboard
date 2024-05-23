import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/adaptive_layouts.dart';
import 'package:responsive_dashboard/views/widgets/desktop_dashboard_layout.dart';
import 'package:responsive_dashboard/views/widgets/mobile_dashbourd_layout.dart';
import 'package:responsive_dashboard/views/widgets/tablet_dashbourd_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
            elevation: 0,
              backgroundColor: const Color(0xffE5E5E5),
              leading: const Icon(Icons.menu),
            )
          : null,
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayout(
          mobileLayout: (context) => const MobileDashbourdLayout(),
          tabletLayout: (context) => const DashBoardTabletLayout(),
          desktopLayout: (context) => const DashBoardDesktopLayout()),
    );
  }
}
