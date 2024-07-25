import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiassigment/setting/setting_provider.dart';
import 'package:provider/provider.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  final List<String> language = [
    "عربي",
    "english",
  ];
  final List<String> themelist = [
    "Dark",
    "light",
  ];

  Settings({super.key});

  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var lng = Provider.of<SettingProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            local.language,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "El Messiri",
                fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown(
              items: language,
              decoration: CustomDropdownDecoration(
                  expandedFillColor: lng.isDark() ? Colors.black : Colors.white,
                  closedFillColor: lng.isDark() ? Colors.black : Colors.white),
              initialItem: lng.currentLang == "en" ? "english" : "عربي",
              onChanged: (value) {
                if (value == "english") {
                  lng.changelang("en");
                }
                if (value == "عربي") {
                  lng.changelang("ar");
                }
              }),
          const SizedBox(
            height: 150,
          ),
          Text(
            local.theme,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: "El Messiri",
                fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown(
              decoration: CustomDropdownDecoration(
                  expandedFillColor: lng.isDark() ? Colors.black : Colors.white,
                  searchFieldDecoration:
                      SearchFieldDecoration(fillColor: Colors.black),
                  closedFillColor: lng.isDark() ? Colors.black : Colors.white),
              items: themelist,
              onChanged: (value) {
                if (value == "light") {
                  lng.changetheme(ThemeMode.light);
                } else if (value == "Dark") {
                  lng.changetheme(ThemeMode.dark);
                }
              })
        ],
      ),
    );
  }
}
