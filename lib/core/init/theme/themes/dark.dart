part of "../theme_settings.dart";



final _darkThemeData = ThemeData.dark(useMaterial3: true).
    copyWith(
      primaryColor: ColorsMain.backgrond,
      hoverColor: ColorsMain.active,
      splashColor: ColorsMain.splash,


      iconTheme: const IconThemeData(color:Colors.white)
    );
      
