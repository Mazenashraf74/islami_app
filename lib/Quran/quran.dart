import 'package:flutter/material.dart';
import 'package:islamiassigment/Quran/quran_view.dart';
import 'package:islamiassigment/Quran/sura_titel.dart';
import 'package:islamiassigment/setting/setting_provider.dart';
import 'package:provider/provider.dart';

class Quran extends StatelessWidget {
  final List<String> sura = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  Quran({super.key});

  @override
  Widget build(BuildContext context) {
    var them = Provider.of<SettingProvider>(context);

    var lng = Provider.of<SettingProvider>(context);
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Scaffold(
      body: Column(children: [
        Image.asset(
          "assets/image/Screenshot (1).png",
          height: mediaQuery.height * 0.2,
        ),
        Divider(
          thickness: 1,
          color: theme.primaryColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "رقم الصوره",
              style: TextStyle(
                  fontFamily: "El Messiri",
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
            Container(width: 1, height: 35, color: theme.primaryColor),
            const Text(
              "اسم الصوره",
              style: TextStyle(
                  fontFamily: "El Messiri",
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
          ],
        ),
        Divider(
          thickness: 1,
          color: theme.primaryColor,
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, QuranView.quranView,
                  arguments: SuraDetial(sura[index], (index + 1).toString()));
            },
            child: SuraTitel(
              suraName: sura[index],
              suraNumber: (index + 1).toString(),
            ),
          ),
          itemCount: sura.length,
        ))
      ]),
    );
  }
}

class SuraDetial {
  final String suraName;
  final String suraNumber;

  SuraDetial(this.suraName, this.suraNumber);
}
