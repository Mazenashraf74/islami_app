import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int tasbehIndex = 0;
  final List<String> tasbeh = ["سبحان الله", "الحمد الله", "استغفرو الله"];
  var indexat = 0;
  int counter = 0;
  double angel = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Stack(alignment: Alignment.topCenter, children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 50),
            child: Image.asset(
              "assets/image/head of seb7a.png",
              height: 100,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 105),
            child: GestureDetector(
              onTap: onClick,
              child: Transform.rotate(
                angle: angel,
                child: Image.asset(
                  "assets/image/body of seb7a.png",
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ]),
        Container(
          padding: const EdgeInsets.only(
            top: 50,
          ),
          alignment: Alignment.center,
          child: const Text(
            "عدد التسبيحات",
            style: TextStyle(
                fontSize: 25,
                fontFamily: "El Messiri",
                fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          child: Text(
            "$counter",
            style: const TextStyle(
              fontSize: 50,
            ),
          ),
        ),
        Container(
          margin:
              const EdgeInsets.only(top: 10, right: 120, left: 120, bottom: 20),
          child: ElevatedButton(
            onPressed: () {
              onClick();
            },
            child: Text(
              tasbeh[indexat],
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: "El Messiri",
                  fontWeight: FontWeight.w800,
                  color: Colors.black),
            ),
          ),
        ),
      ]),
    );
  }

  void onClick() {
    setState(() {
      angel += 100;
      counter++;
      if (counter == 33) {
        indexat += 1;
        counter = 0;
        if (indexat == 3) {
          indexat = 0;
        }
      }
    });
  }
}
