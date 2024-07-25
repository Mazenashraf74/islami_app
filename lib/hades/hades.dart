import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiassigment/hades/hadeth_details.dart';
import 'package:provider/provider.dart';

import '../setting/setting_provider.dart';

class Hades extends StatefulWidget {
  static const String hadesView = "hadesview";

  const Hades({super.key});

  @override
  State<Hades> createState() => _HadesState();
}

class _HadesState extends State<Hades> {
  List<HadethContent> allhadeth = [];

  @override
  Widget build(BuildContext context) {
    var lng = Provider.of<SettingProvider>(context);
    var theme = Theme.of(context);
    if (allhadeth.isEmpty) loadDate();
    return Column(children: [
      Image.asset(
        "assets/image/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png",
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.2,
        alignment: Alignment.center,
      ),
      Divider(
        thickness: 1,
        color: theme.primaryColorDark,
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "الاحاديث",
              style: TextStyle(
                  fontFamily: "El Messiri",
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
          )
        ],
      ),
      Divider(
        thickness: 1,
        color: theme.primaryColorDark,
      ),
      Expanded(
          child: ListView.builder(
              itemCount: allhadeth.length,
              itemBuilder: (context, index) {
                loadDate();
                return InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, HadethDetails.routeName,
                          arguments: allhadeth[index]);
                    });
                  },
                  child: Text(
                    allhadeth[index].titel,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: lng.isDark() ? Colors.white : Colors.black,
                      fontFamily: "El Messiri",
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                );
              }))
    ]);
  }

  Future<void> loadDate() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> Hadeth = content.split("#");
    for (int i = 0; i < Hadeth.length; i++) {
      String singeHadeth = Hadeth[i].trim();
      int titelind = singeHadeth.indexOf("\n");

      String titel = singeHadeth.substring(0, titelind);
      String content = singeHadeth.substring(titelind + 1);

      HadethContent hadethcontent = HadethContent(content, titel);
      allhadeth.add(hadethcontent);
    }
    setState(() {});
  }
}

class HadethContent {
  final String titel;
  final String content;

  HadethContent(this.content, this.titel);
}
