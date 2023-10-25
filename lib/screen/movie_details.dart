import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text('Tom Clancy`s Without Remorse'),
        centerTitle: true,
      ),
      body: ColoredBox(
        color: Color.fromRGBO(24, 23, 27, 1.0),
        child: ListView(
          children: [
             MovieDetailsInfo(),
            SizedBox(height: 30,),
            MovieDetailsCastWidget(),
          ],
        ),
      ),
    );
  }
}
