import 'package:flutter/material.dart';

class ContentDesktop extends StatefulWidget {
  const ContentDesktop({super.key});

  @override
  State<ContentDesktop> createState() => _ContentDesktopState();
}

class _ContentDesktopState extends State<ContentDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
    );
  }
}
