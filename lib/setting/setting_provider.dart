import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  String currentLang = "en";
  ThemeMode currentThememode = ThemeMode.light;

  changelang(String newLang) {
    if (currentLang == newLang) return;
    currentLang = newLang;
    notifyListeners();
  }

  changetheme(ThemeMode newTheme) {
    if (currentThememode == newTheme) return;
    currentThememode = newTheme;
    notifyListeners();
  }

  bool isDark() {
    return currentThememode == ThemeMode.dark;
  }

  String GetBackground() {
    return currentThememode == ThemeMode.dark
        ? "assets/image/bg.png"
        : "assets/image/bg3.png";
  }
}
