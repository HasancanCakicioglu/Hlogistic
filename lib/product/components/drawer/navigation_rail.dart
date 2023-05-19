import 'package:flutter/material.dart';
import 'package:hlogistic/product/components/drawer/navigationRail_header.dart';
import 'package:hlogistic/product/components/drawer/navigationRail_listItem.dart';
import 'package:hlogistic/product/components/drawer/navigationRail_trailing.dart';
import 'package:hlogistic/product/components/drawer/provider_navigationrail.dart';

class NavigationRailWidget extends StatefulWidget {
  const NavigationRailWidget({Key? key}) : super(key: key);

  

  @override
  State<NavigationRailWidget> createState() => _NavigationRailWidgetState();
}

class _NavigationRailWidgetState extends State<NavigationRailWidget>
    with TickerProviderStateMixin {
  late bool extended = true;
  int selectedIndex = 0;

  late AnimationController _controller;
  late final Animation<double> widthAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );

    widthAnimation = Tween<double>(
      begin: extended ? 180 : 60,
      end: extended ? 60 : 180,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void toggleWidth() {
    

    if (extended) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    setState(() {
      extended = !extended;
    });
  }

  @override
  Widget build(BuildContext context) {

    
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            width: widthAnimation.value,
            child: Column(
              
              children: [
                NavigationRail_Header(
                    imagePath: "assets/icon/h.png",
                    AppName: "HLogistic",
                    userName: "Hasancan Çakıcıoğlu",
                    extended: extended,
                    animationWidth: widthAnimation.value,
                    ),
                const Divider(),
                NavigationRail_ListItem(
                    icon: const Icon(Icons.play_lesson),
                    text: "cost",
                    pageEnum: NavigationPagesEnum.costCalculator,
                    extended: extended,
                    animationWidth: widthAnimation.value,),
                NavigationRail_ListItem(
                    icon: const Icon(Icons.play_arrow_outlined),
                    text: "plan",
                    pageEnum: NavigationPagesEnum.plan,
                    extended: extended,
                    animationWidth: widthAnimation.value,),
                NavigationRail_ListItem(
                    icon: const Icon(Icons.play_circle),
                    text: "static",
                    pageEnum: NavigationPagesEnum.statistic,
                    extended: extended,
                    animationWidth: widthAnimation.value,),
                NavigationRail_ListItem(
                    icon: const Icon(Icons.play_circle),
                    text: "settings",
                    pageEnum: NavigationPagesEnum.settings,
                    extended: extended,
                    animationWidth: widthAnimation.value,),
                NavigationRail_Trailing(icon: const Icon(Icons.arrow_left),onPressed: toggleWidth,)
              ],
            ),
          );
        });
  }
}



// class navigationRailSizeExpander extends  InheritedWidget {
  
//   navigationRailSizeExpander({Key? key,required this.child}) : super(key: key, child: child);

//   final Widget child;

//   @override
//   bool updateShouldNotify(covariant navigationRailSizeExpander oldWidget) {
//     return oldWidget.complexData != complexData;
//   }

  
// }
