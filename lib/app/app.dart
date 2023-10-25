import 'package:flutter/material.dart';
import 'package:the_movie_db/config/app_color.dart';
import 'package:the_movie_db/widgets/auth/auth_widget.dart';
import 'package:the_movie_db/widgets/main_screen/main_screen_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: AppColor.mainDarkBlue),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColor.mainDarkBlue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey
        ),
        brightness: Brightness.light,
        fontFamily: "OpenSans"
      ),
      routes: {
        '/auth': (context)=> AuthWidget(),
        '/main_screen': (context)=> MainScreenWidget(),
      },
      initialRoute: '/auth',
    );
  }
}
