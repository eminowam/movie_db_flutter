import 'package:flutter/material.dart';

class SummeryWidget extends StatelessWidget {
  const SummeryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color.fromRGBO(22, 21, 25, 1.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
        child: Text(
            "R, 04/05/2021 (US) 1h 49m Action, Adventure, Thriller, War",
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.white)),
      ),
    );
  }
}