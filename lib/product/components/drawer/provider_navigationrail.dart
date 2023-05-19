import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hlogistic/feature/screens/costCalculator/view/cost_calculator.dart';
import 'package:hlogistic/feature/screens/plan/view/plan.dart';
import 'package:hlogistic/feature/screens/settings/view/settings.dart';
import 'package:hlogistic/feature/screens/statistic/view/statistic.dart';


final navigationRailProvider = ChangeNotifierProvider((ref) => NavigationRailProvider());


enum NavigationPagesEnum {
  costCalculator,
  plan,
  statistic,
  settings;
}


class NavigationRailProvider extends ChangeNotifier {

  List<Widget> pages = [
    costCalculator(),
    plan(),
    statistic(),
    settings(),
  ];
  int _selectedIndex = 0;
  bool extended = true;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int index) {
    if (index != _selectedIndex) {
      _selectedIndex = index;
      notifyListeners();
    }
  }

}
