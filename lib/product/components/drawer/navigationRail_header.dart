import 'package:flutter/material.dart';



class NavigationRail_Header extends StatelessWidget {
  const NavigationRail_Header(
      {Key? key,
      required this.imagePath,
      required this.AppName,
      required this.userName,
      required this.extended,
      required this.animationWidth
      })
      : super(key: key);

  final bool extended;
  final String imagePath;
  final String AppName;
  final String userName;
  final double height = 200;
  final double animationWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Center(
        child: Column(
          children: [
            Padding(padding: animationWidth>150 ? EdgeInsets.only(top: animationWidth*1/9,left: animationWidth * 1/9,right: animationWidth * 1/9) : const EdgeInsets.all(5),child: Image.asset(imagePath),),
            animationWidth>150 ? Text(AppName) : const SizedBox(),
            animationWidth>150 ? Text(userName) : const SizedBox(),
          ],
        ),)
      
    );
  }
}
