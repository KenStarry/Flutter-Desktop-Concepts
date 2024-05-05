import 'package:flutter/material.dart';
import 'package:truck_bidding_concept/core/presentation/widgets/responsive_layout.dart';
import 'package:truck_bidding_concept/feature_dashboard/presentation/pages/dashboard_page_desktop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ResponsiveLayout(
          mobileBody: DashboardPageDesktop(),
          tabletBody: DashboardPageDesktop(),
          desktopBody: DashboardPageDesktop()),
      debugShowCheckedModeBanner: false,
    );
  }
}
