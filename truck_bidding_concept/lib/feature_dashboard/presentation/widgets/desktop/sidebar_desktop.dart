import 'package:flutter/material.dart';

class SideBarDesktop extends StatefulWidget {
  const SideBarDesktop({super.key});

  @override
  State<SideBarDesktop> createState() => _SideBarDesktopState();
}

class _SideBarDesktopState extends State<SideBarDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    );
  }
}
