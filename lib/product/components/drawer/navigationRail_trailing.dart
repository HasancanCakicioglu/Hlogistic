import 'package:flutter/material.dart';

class NavigationRail_Trailing extends StatelessWidget {
  const NavigationRail_Trailing({Key? key, required this.icon})
      : super(key: key);

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 45,
          child: InkWell(
          onTap: () {},
          child: Center(
            child: icon,
          ),
        ),),
      ],
    ));
  }
}
