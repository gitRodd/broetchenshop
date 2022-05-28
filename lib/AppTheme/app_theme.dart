import 'package:broetchenshop/AppTheme/config.dart';
import 'package:flutter/material.dart';

///App Theme Klasse
///So gut wie alle Designs sind hier
///Dark und Light mode
class MyTheme with ChangeNotifier{

  static bool isDark = false;
  String key = "currentAppThemeMode";

  ///gibt die aktuelle ThemeMode zurück
  ThemeMode currrentTheme(){
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  ///gibt die gespeicherte ThemeMode zurück
  ///ist für den Start
  getFirstAppThemeMode() async {
    await sharedPref.getValue(key)! == "true" ? isDark = true : isDark=false;
  }

  ///ändert die ThemeMode
  ///speichert die sofort mit dem Key
  switchTheme() async {
    isDark = !isDark;
    await sharedPref.save(key, isDark.toString());
    notifyListeners();
  }

  ThemeData lightMode(){
    return ThemeData(
      scaffoldBackgroundColor:  Colors.grey.shade100,//const Color.fromRGBO(0, 110, 199, 1)
      textTheme: TextTheme(

      )
    );
  }

  ThemeData darkMode(){
    return ThemeData.dark().copyWith(
    );
  }
}