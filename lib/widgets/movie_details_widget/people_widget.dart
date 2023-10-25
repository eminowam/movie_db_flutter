import 'package:flutter/material.dart';

class PeopleWidget extends StatelessWidget {
  const PeopleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final nameStyle = TextStyle(
        fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white);
    final jobStyle = TextStyle(
        fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white);
    return Column(children: [
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Stefano Sollima",
                style: nameStyle,
              ),
              Text(
                "Director",
                style: jobStyle,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Stefano Sollima",
                style: nameStyle,
              ),
              Text(
                "Director",
                style: jobStyle,
              )
            ],
          )
        ],
      ),
      SizedBox(
        height: 17,
      ),
      Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Stefano Sollima",
                  style: nameStyle,
                ),
                Text(
                  "Director",
                  style: jobStyle,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Stefano Sollima",
                  style: nameStyle,
                ),
                Text(
                  "Director",
                  style: jobStyle,
                )
              ],
            )
          ]),
    ]);
  }
}