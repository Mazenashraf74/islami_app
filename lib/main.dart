import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:islamiassigment/Quran/quran_view.dart';
import 'package:islamiassigment/config.dart';
import 'package:islamiassigment/hades/hades.dart';
import 'package:islamiassigment/hades/hades_view.dart';
import 'package:islamiassigment/hades/hadeth_details.dart';
import 'package:islamiassigment/home_page.dart';
import 'package:islamiassigment/setting/setting_provider.dart';
import 'package:islamiassigment/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var lng = Provider.of<SettingProvider>(context);
    var them = Provider.of<SettingProvider>(context);

    return MaterialApp(
      title: "isalmi",
      theme: ApplicationManger.LightTheme,
      themeMode: them.currentThememode,
      darkTheme: ApplicationManger.darkTheme,
      debugShowCheckedModeBanner: false,
      locale: Locale(lng.currentLang),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: SplashScreen.routName,
      routes: {
        SplashScreen.routName: (context) => const SplashScreen(),
        MainScreen.routName: (context) => const MainScreen(),
        QuranView.quranView: (context) => const QuranView(),
        HadethDetails.routeName: (context) => HadethDetails()
      },
    );
  }
}
