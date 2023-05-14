import 'package:flutter/material.dart';

class NavigationRail_Header extends StatelessWidget {
  const NavigationRail_Header(
      {Key? key,
      required this.imagePath,
      required this.AppName,
      required this.userName})
      : super(key: key);

  final String imagePath;
  final String AppName;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 20,left: 50,right: 50,bottom: 10),child: Image.asset(imagePath),),
            Text(AppName),
            Text(userName),
          ],
        ),
      
    );
  }
}
