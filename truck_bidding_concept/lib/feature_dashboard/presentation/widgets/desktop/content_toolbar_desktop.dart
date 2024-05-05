import 'package:flutter/material.dart';
import 'package:truck_bidding_concept/theme/colors.dart';

class ContentToolbarDesktop extends StatefulWidget {
  const ContentToolbarDesktop({super.key});

  @override
  State<ContentToolbarDesktop> createState() => _ContentToolbarDesktopState();
}

class _ContentToolbarDesktopState extends State<ContentToolbarDesktop> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          //  textfield
          Container(
              width: 250,
              height: 50,
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                    hintText: 'Keyword search',
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.white.withOpacity(0.7)),
                    suffixIcon: Icon(
                      Icons.search_rounded,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    filled: true,
                    fillColor: darkGreenBackground.withOpacity(0.7),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12))),
              )),

          Text('Helooooooo')
        ],
      ),
    );
  }
}
