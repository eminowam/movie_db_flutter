import 'package:flutter/material.dart';
import 'package:the_movie_db/config/app_color.dart';
import 'package:the_movie_db/config/app_text_style.dart';
import 'package:the_movie_db/screen/main_screen_widget.dart';
import 'package:the_movie_db/widgets/auth/auth_model.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = AuthProvider.read(context)?.model;
    final borderDecoration = InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10));
    // final errorText = this.errorText;
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _ErrorMessageWidget(),
          Text(
            "Username",
            style: AppTextStyle.descTextStyle,
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
              controller: model?.loginTextController,
              decoration: borderDecoration),
          SizedBox(
            height: 16,
          ),
          Text(
            "Password",
            style: AppTextStyle.descTextStyle,
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            controller: model?.passwordTextController,
            decoration: borderDecoration,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 26,
              ),
              const _AuthButtonWidget(),
              TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(AppColor.mainScreenColor),
                    textStyle:
                        MaterialStateProperty.all(AppTextStyle.descTextStyle),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 15, vertical: 8)),
                  ),
                  child: Text("Reset password")),
            ],
          )
        ],
      ),
    );
  }
}

class _ErrorMessageWidget extends StatelessWidget {
  const _ErrorMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final errorMessage = AuthProvider.watch(context)?.model.errorMessage;
    if (errorMessage == null) return SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 17),
      child: Text(
        errorMessage ?? "",
        style: TextStyle(fontSize: 17, color: Colors.red),
      ),
    );
  }
}

class _AuthButtonWidget extends StatelessWidget {
  const _AuthButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final model = AuthProvider.watch(context)?.model;
    final onPressed =
        model?.canStartAuth == true ? () => model?.auth(context) : null;
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(AppColor.mainScreenColor),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            textStyle: MaterialStateProperty.all(AppTextStyle.descTextStyle),
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 15, vertical: 8))),
        child: Text("Login"));
  }
}
