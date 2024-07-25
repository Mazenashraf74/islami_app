import 'package:flutter/material.dart';

class ApplicationManger {
  static const Color primrycolor = Color(0xFFB7935F);
  static const Color primrydarkcolor = Color(0xFF141A2E);
  static const Color onprimrydarkcolor = Color(0xFFFACC1D);
  static ThemeData LightTheme = ThemeData(
    primaryColor: primrycolor,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontFamily: "El Messiri",
            fontSize: 30,
            fontWeight: FontWeight.bold)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: primrycolor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF707070),
        selectedLabelStyle:
            TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
        selectedIconTheme: IconThemeData(color: Colors.black)),
    elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(primrycolor))),
  );
  static ThemeData darkTheme = ThemeData(
      primaryColor: primrydarkcolor,
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(color: onprimrydarkcolor),
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontFamily: "El Messiri",
              fontSize: 30,
              fontWeight: FontWeight.bold)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: primrydarkcolor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: onprimrydarkcolor,
        selectedLabelStyle: TextStyle(
            color: onprimrydarkcolor,
            fontSize: 15,
            fontWeight: FontWeight.normal),
        selectedIconTheme: IconThemeData(color: onprimrydarkcolor),
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: "El Messiri",
            fontWeight: FontWeight.bold),
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(onprimrydarkcolor))),
      textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.white),
          bodyLarge: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white),
          bodyMedium: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 25,
              fontWeight: FontWeight.normal,
              color: Colors.white),
          bodySmall: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.white)),
      dividerColor: onprimrydarkcolor);
}
