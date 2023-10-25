import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_movie_db/widgets/movie_details_widget/movie_name_widget.dart';
import 'package:the_movie_db/widgets/movie_details_widget/people_widget.dart';
import 'package:the_movie_db/widgets/movie_details_widget/score_widget.dart';
import 'package:the_movie_db/widgets/movie_details_widget/summery_widget.dart';
import 'package:the_movie_db/widgets/movie_details_widget/top_poster.dart';

class MovieDetailsInfo extends StatelessWidget {
  const MovieDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TopPosterWidget(),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: MovieNameWidget(),
      ),
      ScoreWidget(),
      SummeryWidget(),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text("Overiew",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.white)),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
            "Black Panther is a 2018 American superhero "
            "film based on the Marvel Comics character of the same name. "
            "Produced by Marvel Studios and distributed by Walt Disney"
            " Studios Motion Pictures,it is the 18th film in the"
            " Marvel Cinematic Universe",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.white)),
      ),
      SizedBox(
        height: 30,
      ),
      PeopleWidget()
    ]);
  }
}
