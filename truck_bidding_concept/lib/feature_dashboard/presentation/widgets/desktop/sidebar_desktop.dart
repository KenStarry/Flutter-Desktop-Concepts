import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:truck_bidding_concept/theme/colors.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 32),
      color: greenBackground,
      child: CustomScrollView(
        slivers: [
          //  title
          SliverPadding(
            padding: const EdgeInsets.only(left: 32),
            sliver: SliverToBoxAdapter(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Truck',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.titleLarge!.fontSize,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                TextSpan(
                    text: ' Bidding',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.titleLarge!.fontSize,
                        fontWeight: FontWeight.w800,
                        color: Colors.white)),
              ])),
            ),
          )
          //  navigation
          //  create bid button
        ],
      ),
    );
  }
}
