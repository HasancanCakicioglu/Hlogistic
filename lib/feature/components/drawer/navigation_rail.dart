import 'package:flutter/material.dart';
import 'package:hlogistic/core/constants/image/image_constants.dart';
import 'package:hlogistic/feature/screens/costCalculator/view/cost_calculator.dart';
import 'package:hlogistic/feature/screens/plan/view/plan.dart';
import 'package:hlogistic/feature/screens/statistic/view/statistic.dart';


class NavigationRailWidget extends StatefulWidget {
  NavigationRailWidget({Key? key}) : super(key: key);

  @override
  State<NavigationRailWidget> createState() => _NavigationRailWidgetState();
}

class _NavigationRailWidgetState extends State<NavigationRailWidget> {
  bool extended = false;
  int selectedIndex = 0;

  List<Widget> containers = [
    Container(width: 200,height: 200,child: Image.network("https://i.ytimg.com/vi/FulyL4oFj40/maxresdefault.jpg"),),
    Container(width: 200,height: 200,child: Image.network("https://cdn.webtekno.com/media/cache/content_detail_v2/article/127114/resim-cizme-ipuclari-1661167588.jpg"),),
  ];

  List<Widget> pages = [
    statistic(),
    plan(),

  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
          
          onDestinationSelected: (index){
            setState(() {
              selectedIndex =index;
            });
          },
          leading: CircleAvatar(child: Image.asset("assets/icon/h.png"),),
          trailing: ElevatedButton(onPressed: (){
            setState(() {
              extended = !extended;
            });
          }, child: Icon(Icons.menu)),
          extended: extended,
          labelType: extended ? NavigationRailLabelType.none : NavigationRailLabelType.selected,
          //backgroundColor: Colors.red,
          groupAlignment: 0,
          destinations: const  [
          NavigationRailDestination(icon: Icon(Icons.local_activity,color: Colors.white,), label: Text("label1")),
          NavigationRailDestination(icon: Icon(Icons.donut_large,color: Colors.white,), label: Text("label2")),
          
        ], selectedIndex: selectedIndex),
        Expanded(child: pages[selectedIndex])
      ],
    );
  }
}