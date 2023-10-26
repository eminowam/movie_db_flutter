import 'package:flutter/material.dart';
import 'package:the_movie_db/config/app_color.dart';

 class Movie {
   final int id;
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie({
    required this.id,
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });
}

class MovieListWidget extends StatefulWidget {

   MovieListWidget({super.key});

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
   var _filteredMovies=<Movie>[];
   final _searchController=TextEditingController();

  final _movies=[
    Movie(
      id: 1,
        imageName:"assets/avatar.png",
        title: 'Avatar 3',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
    Movie(
      id: 2,
        imageName:"assets/avatar.png",
        title: 'Elegant',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
    Movie(
      id: 3,
        imageName:"assets/avatar.png",
        title: 'Titanic',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
    Movie(
      id: 4,
        imageName:"assets/avatar.png",
        title: 'Sour Candy',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
    Movie(
      id: 5,
        imageName:"assets/avatar.png",
        title: 'How you like that',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
    Movie(
      id: 6,
        imageName:"assets/avatar.png",
        title: 'Stay with me',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
    Movie(
      id: 7,
        imageName:"assets/avatar.png",
        title: 'Once in Hollywood',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
    Movie(
      id: 8,
        imageName:"assets/avatar.png",
        title: 'The Great Gatsby',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
  ];


  void _searchMovies() {
    final query=_searchController.text;
    if(query.isNotEmpty){
      _filteredMovies=_movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }else{
      _filteredMovies=_movies;
    }
    setState(() {

    });
  }

  void _onMovieTap(int index){
    final id=_movies[index].id;
    Navigator.of(context).pushNamed('/main_screen/movie_details',
    arguments: id
    );
  }

  @override
  void initState() {
    super.initState();
    _searchMovies();
    _searchController.addListener(_searchMovies);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        ListView.builder(
            padding:EdgeInsets.only(top: 70) ,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filteredMovies.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index) {
            final movie=_filteredMovies[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.searchCardColor,
                      border: Border.all(color: Colors.white.withOpacity(0.2)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 2))
                      ]),
                  clipBehavior: Clip.hardEdge,
                  child:  Row(
                    children: [
                      Image(image: AssetImage(movie.imageName)),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              movie.title,
                              style: TextStyle(fontWeight: FontWeight.w600,
                              color: Colors.white),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              movie.time,
                              style: TextStyle(color: Colors.grey),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              movie.description,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      )
                    ],
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: ()=> _onMovieTap(index),
                  ),
                )
              ]),
            );
          }),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: "Search",
              labelStyle: TextStyle(
                color: Colors.grey
              ),
              filled: true,
              fillColor: AppColor.searchCardColor.withOpacity(0.6),
              border: OutlineInputBorder(
              ),
            ),


          ),
        )
    ]

    );
  }
}
