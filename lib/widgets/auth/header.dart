import 'package:flutter/material.dart';
import 'package:the_movie_db/config/app_color.dart';
import 'package:the_movie_db/config/app_text_style.dart';

class HeaderDB extends StatelessWidget {
  const HeaderDB({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
              "For instance, motivation is what helps you "
              "lose extra weight, or pushes you to get that "
              "promotion at work. In short, motivation causes "
              "you to act in a way that gets you closer to "
              "your goals. Motivation includes the biological",
              style: AppTextStyle.descTextStyle),
          SizedBox(height: 4),
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all(AppColor.mainScreenColor),
                  textStyle:
                      MaterialStateProperty.all(AppTextStyle.descButtonStyle)),
              child: Text("Register")),
          SizedBox(
            height: 16,
          ),
          Text(
              "The Movie Data Basebis simple way to wacth movies "
              "and original serials",
              style: AppTextStyle.descTextStyle),
          SizedBox(height: 4),
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all(AppColor.mainScreenColor),
                textStyle:
                    MaterialStateProperty.all(AppTextStyle.descButtonStyle),
              ),
              child: Text("Verify email")),
        ],
      ),
    );
  }
}
