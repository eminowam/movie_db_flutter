import 'package:flutter/material.dart';
import 'package:the_movie_db/widgets/auth/form_widget.dart';
import 'package:the_movie_db/widgets/auth/header.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login to your account"),
      ),
      body: ListView(
        children: [
          FormWidget(),
          SizedBox(
            height: 16,
          ),
          HeaderDB(),
        ],
      ),
    );
  }
}
