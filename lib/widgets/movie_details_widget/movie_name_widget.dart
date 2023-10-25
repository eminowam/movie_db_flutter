import 'package:flutter/material.dart';

class MovieNameWidget extends StatelessWidget {
  const MovieNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        maxLines: 3,
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: "Tom Clancy`s Without Remorse",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21)),
          TextSpan(
              text: "( 2021)",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey))
        ]));
  }
}
