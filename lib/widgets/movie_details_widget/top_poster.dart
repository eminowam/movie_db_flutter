import 'package:flutter/material.dart';

class TopPosterWidget extends StatelessWidget {
  const TopPosterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(image: AssetImage('assets/creedp.webp')),
      ],
    );
  }
}
