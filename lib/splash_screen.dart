import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamiassigment/home_page.dart';
import 'package:islamiassigment/radio.dart';
import 'package:islamiassigment/setting/setting_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static const String routName = "spl";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, MainScreen.routName);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var lng = Provider.of<SettingProvider>(context);
    return Scaffold(
      body: Image.asset(
        lng.currentThememode == ThemeMode.dark
            ? "assets/image/splash – 1.png"
            : "assets/image/splash.png",
      ),
    );
  }
}
