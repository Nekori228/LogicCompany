import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globals.dart';
import 'AcceptedPage.dart';
import 'DeliveredPage.dart';
import 'IncomingPage.dart';
import 'MainPage.dart';

class ProjectBottomNavBar extends StatefulWidget {
  const ProjectBottomNavBar({Key? key}) : super(key: key);

  @override
  State<ProjectBottomNavBar> createState() => _ProjectBottomNavBarState();
}

class _ProjectBottomNavBarState extends State<ProjectBottomNavBar> {
  List card = [];

  void onSelectTab(int index) {
    var listWidget = [
      MainPage(),
      IncomingPage(),
      AcceptedPage(),
      DeliveredPage()
    ];
    if (selectedPage != index) {
      setState(() {
        selectedPage = index;
      });
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => listWidget[selectedPage]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 72,
      color: Color(0xFF170F38),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, mainAxisSize: MainAxisSize.min, children: [
        SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: selectedPage == 0 ? Image.asset('assets/icons/icon1_press.png') : Image.asset("assets/icons/icon1_nopress.png"),
                onPressed: () {
                  onSelectTab(0);
                },
              ),
            ],
          ),
        ),
        // SizedBox(
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     children: [
        //       Padding(
        //         padding: EdgeInsets.all(8),
        //         child: GestureDetector(
        //           child: badges.Badge(
        //             child: selectedPage == 1
        //                 ? Image.asset(
        //               'assets/icons/memesIconPresed.png',
        //               height: 30,
        //             )
        //                 : Image.asset(
        //                 "assets/icons/memesIcons"
        //                     ".png",
        //                 height: 30),
        //             badgeContent: Text(card.length.toString(), style: TextStyle(color: Colors.white),),
        //             badgeStyle: badges.BadgeStyle(badgeColor: Color(0xff292929)),
        //           ),
        //           onTap: () {
        //             onSelectTab(1);
        //           },
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: selectedPage == 1
                    ? Image.asset('assets/icons/icon2_press.png')
                    : Image.asset(
                  "assets/icons/icon2_nopress.png",
                ),
                onPressed: () {
                  onSelectTab(1);
                },
              ),
            ],
          ),
        ),
        SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: selectedPage == 2
                    ? Image.asset('assets/icons/icon3_press.png')
                    : Image.asset(
                  "assets/icons/icon3_nopress.png",
                ),
                onPressed: () {
                  onSelectTab(2);
                },
              ),
            ],
          ),
        ),
        SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: selectedPage == 3
                    ? Image.asset('assets/icons/icon4_press.png')
                    : Image.asset(
                  "assets/icons/icon4_nopress.png",
                ),
                onPressed: () {
                  onSelectTab(3);
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
