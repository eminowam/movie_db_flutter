import 'package:flutter/material.dart';
import 'package:the_movie_db/config/app_color.dart';
import 'package:the_movie_db/config/app_text_style.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if(
    login=="admin" && password=="admin"){
      print("open app");
    }else{
      print("show error");
    }
  }

  void _resetPassword() {
    print("Reset password");
  }

  @override
  Widget build(BuildContext context) {
    final borderDecoration = InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10));
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Username",
            style: AppTextStyle.descTextStyle,
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
              controller: _loginTextController, decoration: borderDecoration),
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
            controller: _passwordTextController,
            decoration: borderDecoration,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              TextButton(
                  onPressed: _auth,
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColor.mainScreenColor),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      textStyle:
                          MaterialStateProperty.all(AppTextStyle.descTextStyle),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 15, vertical: 8))),
                  child: Text("Login")),
              SizedBox(
                width: 26,
              ),
              TextButton(
                  onPressed: _resetPassword,
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
