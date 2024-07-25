import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../setting/setting_provider.dart';
import 'hades.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadethdetails";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethContent;
    var theme = Theme.of(context);
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
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "سوره ${args.titel}",
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
                    Text(
                      args.content,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "El Messiri",
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
