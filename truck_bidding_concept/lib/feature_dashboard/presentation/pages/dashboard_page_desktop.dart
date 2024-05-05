import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:truck_bidding_concept/feature_dashboard/presentation/widgets/desktop/content_desktop.dart';
import 'package:truck_bidding_concept/feature_dashboard/presentation/widgets/desktop/sidebar_desktop.dart';

import '../../../theme/colors.dart';

class DashboardPageDesktop extends StatefulWidget {
  const DashboardPageDesktop({super.key});

  @override
  State<DashboardPageDesktop> createState() => _DashboardPageDesktopState();
}

class _DashboardPageDesktopState extends State<DashboardPageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenBackground,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [greenBackground, darkGreenBackground])),
        child: Row(
          children: [
            //  sidebar
            Expanded(flex: 1, child: SideBarDesktop()),
            //  main content
            Expanded(flex: 4, child: ContentDesktop())
          ],
        ),
      ),
    );
  }
}
