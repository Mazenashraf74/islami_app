import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuraTitel extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const SuraTitel(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            suraNumber,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "El Messiri",
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
        ),
        Container(
          width: 1,
          height: 38,
          color: theme.primaryColor,
        ),
        Expanded(
          child: Text(
            suraName,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: "El Messiri",
                fontWeight: FontWeight.w600,
                fontSize: 25),
          ),
        ),
      ],
    );
  }
}
