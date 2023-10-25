import 'package:flutter/material.dart';
import 'package:the_movie_db/config/app_color.dart';
import 'package:the_movie_db/screen/auth_widget.dart';
import 'package:the_movie_db/screen/main_screen_widget.dart';
import 'package:the_movie_db/screen/movie_details.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: AppColor.mainDarkBlue),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: AppColor.mainDarkBlue,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey),
          brightness: Brightness.light,
          fontFamily: "OpenSans"),
      routes: {
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
        '/main_screen/movie_details': (context) {
          final arguments = ModalRoute.of(context)!.settings.arguments;
          if (arguments is int) {
            return MovieDetailsWidget(movieId: arguments);
          } else {
            return MovieDetailsWidget(movieId: 0);
          }
        },
      },
      initialRoute: '/auth',
    );
  }
}
