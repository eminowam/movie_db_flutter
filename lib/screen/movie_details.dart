import 'package:flutter/material.dart';
import 'package:the_movie_db/config/app_color.dart';
import 'package:the_movie_db/widgets/movie_details_widget/cast_widget/movie_detail_cast.dart';
import 'package:the_movie_db/widgets/movie_details_widget/movie_details_info.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int movieId;
  const MovieDetailsWidget({super.key, required this.movieId});

  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainDarkBlue,
      appBar: AppBar(
        title: Text('Tom Clancy`s Without Remorse'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
           MovieDetailsInfo(),
          SizedBox(height: 15,),
          Divider(
            height: 3,
            thickness: 0.5,
            indent: 10,
            endIndent:10,
            color: Colors.white,
          ),
          SizedBox(height: 5,),
          MovieDetailsCastWidget(),
        ],
      ),
    );
  }
}
