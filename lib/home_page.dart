import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:islamiassigment/hades/hades.dart';
import 'package:islamiassigment/Quran/quran.dart';
import 'package:islamiassigment/hades/hadeth_details.dart';
import 'package:islamiassigment/radio.dart';
import 'package:islamiassigment/sebha.dart';
import 'package:islamiassigment/setting/setting_provider.dart';
import 'package:islamiassigment/setting/settings.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  static const String routName = "Main";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int CurrentIndex = 3;

  List<Widget> screen = [Hades(), Sebha(), RadioView(), Quran(), Settings()];

  @override
  Widget build(BuildContext context) {
    var lng = Provider.of<SettingProvider>(context);

    var lang = AppLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(lng.GetBackground()), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(lang.islami),
        ),
        body: Container(child: screen[CurrentIndex]),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: CurrentIndex,
            onTap: (index) {
              setState(() {
                CurrentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                      AssetImage("assets/image/quran-quran-svgrepo-com.png")),
                  label: lang.hadeth),
              BottomNavigationBarItem(
                  icon:
                      const ImageIcon(AssetImage("assets/image/sebha (1).png")),
                  label: lang.tasbeh),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/image/radio.png")),
                  label: lang.radio),
              BottomNavigationBarItem(
                  icon:
                      const ImageIcon(AssetImage("assets/image/quran (1).png")),
                  label: lang.quran),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.settings), label: lang.setting),
            ]),
      ),
    );
  }
}
