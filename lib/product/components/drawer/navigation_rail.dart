import 'package:flutter/material.dart';
import 'package:hlogistic/feature/screens/plan/view/plan.dart';
import 'package:hlogistic/feature/screens/statistic/view/statistic.dart';
import 'package:hlogistic/product/components/drawer/navigationRail_header.dart';
import 'package:hlogistic/product/components/drawer/navigationRail_listItem.dart';
import 'package:hlogistic/product/components/drawer/navigationRail_trailing.dart';

class NavigationRailWidget extends StatefulWidget {
  NavigationRailWidget({Key? key}) : super(key: key);

  @override
  State<NavigationRailWidget> createState() => _NavigationRailWidgetState();
}

class _NavigationRailWidgetState extends State<NavigationRailWidget> {
  bool extended = false;
  int selectedIndex = 0;

  

  List<Widget> pages = [
    statistic(),
    plan(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        width: 180,
        child: const Column(
          children: [
            NavigationRail_Header(
                imagePath: "assets/icon/h.png",
                AppName: "HLogistic",
                userName: "Hasancan Çakıcıoğlu"),
            Divider(),
            NavigationRail_ListItem(
                icon: Icon(Icons.play_lesson), text: "plan 1"),
            NavigationRail_ListItem(
                icon: Icon(Icons.play_arrow_outlined), text: "plan 2"),
            NavigationRail_ListItem(
                icon: Icon(Icons.play_circle), text: "plan 3"),
            NavigationRail_Trailing(icon: Icon(Icons.arrow_left))
          ],
        ));
  }
}
