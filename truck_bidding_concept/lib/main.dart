import 'package:flutter/material.dart';
import 'package:truck_bidding_concept/core/presentation/widgets/responsive_layout.dart';
import 'package:truck_bidding_concept/feature_dashboard/presentation/pages/dashboard_page_desktop.dart';
import 'package:truck_bidding_concept/theme/my_theme.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions options = const WindowOptions(
      size: Size(1500, 1000),
      center: true,
      backgroundColor: Colors.red,
      skipTaskbar: false,
      windowButtonVisibility: false,
      titleBarStyle: TitleBarStyle.normal,
  );

  windowManager.waitUntilReadyToShow(options, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ResponsiveLayout(
          mobileBody: DashboardPageDesktop(),
          tabletBody: DashboardPageDesktop(),
          desktopBody: DashboardPageDesktop()),
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.lightTheme,
    );
  }
}
