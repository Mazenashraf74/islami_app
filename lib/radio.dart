import 'package:flutter/material.dart';
import 'package:islamiassigment/setting/setting_provider.dart';
import 'package:provider/provider.dart';

class RadioView extends StatelessWidget {
  static const String routName = "main screen";

  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var lng = Provider.of<SettingProvider>(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image(
            image: const AssetImage(
              "assets/image/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png",
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          const Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "اذاعة القران الكريم",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  fontFamily: "El Messiri",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage(
                  "assets/image/Group 5.png",
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ],
          )
        ]));
  }
}
