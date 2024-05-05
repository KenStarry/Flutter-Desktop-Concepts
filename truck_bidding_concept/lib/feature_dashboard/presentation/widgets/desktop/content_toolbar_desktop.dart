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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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

          Row(
            children: [
              //  notification icon
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: darkGreenBackground),
                child: Icon(
                  Icons.notifications_rounded,
                  color: Colors.white,
                ),
              ),

              const SizedBox(width: 24),

              //  profile icon
              Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: darkGreenBackground),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('assets/images/test2.jpg',
                          width: double.infinity,
                          height: double.infinity,
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Avery Winter',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),

                      //  role
                      Text(
                        'Admin',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(0.7)),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
