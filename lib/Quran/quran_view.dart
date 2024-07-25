import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiassigment/Quran/quran.dart';
import 'package:islamiassigment/setting/setting_provider.dart';
import 'package:provider/provider.dart';

class QuranView extends StatefulWidget {
  const QuranView({super.key});

  static String quranView = "quran view";

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  List<String> lines = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetial;
    var theme = Theme.of(context);
    if (lines.isEmpty) loadSuraContent(args.suraNumber);
    var lng = Provider.of<SettingProvider>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(lng.GetBackground()), fit: BoxFit.cover)),
      child: Scaffold(
          appBar: AppBar(
            title: const Text("اسلامي"),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: const EdgeInsets.only(
              top: 20,
              right: 20,
              bottom: 80,
              left: 20,
            ),
            padding: const EdgeInsets.only(
              top: 20,
              right: 20,
              bottom: 80,
              left: 20,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: lng.isDark()
                    ? Color(0xFF141A2E).withOpacity(0.5)
                    : theme.primaryColor.withOpacity(0.8)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "سوره ${args.suraName}",
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "El Messiri",
                          fontSize: 20),
                    ),
                    const Icon(Icons.play_circle),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: theme.primaryColor,
                ),
                Expanded(
                    child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    lines[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "El Messiri",
                        fontSize: 20),
                  ),
                  itemCount: lines.length,
                ))
              ],
            ),
          )),
    );
  }

  Future<void> loadSuraContent(String suraNumber) async {
    String suraContent =
        await rootBundle.loadString("assets/files/$suraNumber.txt");
    lines = suraContent.split("\n");
    setState(() {});
  }
}
