import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hlogistic/core/init/theme/color/main_colors.dart';


part 'themes/dark.dart';
part 'themes/light.dart';


final themeProvider = ChangeNotifierProvider<ThemeSettings>((ref) => ThemeSettings());


class ThemeSettings extends ChangeNotifier{

  ThemeData _currentThemeData = _darkThemeData;
  ThemeData get themeData => _currentThemeData;

  void toggleTheme(){
    _currentThemeData = _currentThemeData == _lightThemeData ? _darkThemeData : _lightThemeData;
    notifyListeners();
  }

  void setLightTheme(){
    _currentThemeData = _lightThemeData;
    notifyListeners();
  }

  void setDarkTheme(){
    _currentThemeData = _darkThemeData;
    notifyListeners();
  }


}