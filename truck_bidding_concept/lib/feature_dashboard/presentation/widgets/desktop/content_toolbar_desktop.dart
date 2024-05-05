import 'package:flutter/material.dart';

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
          Container(width: 200, height: 50, child: TextFormField(
            controller: _controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.red
            ),
          )),

          Text('Helooooooo')
        ],
      ),
    );
  }
}
