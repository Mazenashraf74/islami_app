import 'package:flutter/material.dart';

class HadethTitleWidget extends StatelessWidget {
  String title;

  HadethTitleWidget(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 22,
      ),
    );
  }
}
