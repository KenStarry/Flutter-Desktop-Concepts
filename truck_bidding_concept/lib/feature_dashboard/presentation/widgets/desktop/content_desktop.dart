import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:truck_bidding_concept/feature_dashboard/presentation/widgets/desktop/content_toolbar_desktop.dart';
import 'package:truck_bidding_concept/theme/colors.dart';

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
      color: greenBackground,
      child: Stack(
        children: [
          //  blue card at the back
          Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(32)),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [darkBlue, darkGreenBackground]))),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
            child: CustomScrollView(
              slivers: [
                //  toolbar
                ContentToolbarDesktop()
              ],
            ),
          )
        ],
      ),
    );
  }
}
