import 'package:flutter/material.dart';
import 'package:the_movie_db/widgets/auth/auth_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Color.fromRGBO(3, 37, 65, 1)),
        brightness: Brightness.light,
        fontFamily: "OpenSans"
      ),
      home: AuthWidget(),
    );
  }
}
