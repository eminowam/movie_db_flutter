import 'package:flutter/material.dart';

 class Movie {
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie({
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
        imageName:"assets/avatar.png",
        title: 'Avatar 3',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
    Movie(
        imageName:"assets/avatar.png",
        title: 'Elegant',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
    Movie(
        imageName:"assets/avatar.png",
        title: 'Titanic',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
    Movie(
        imageName:"assets/avatar.png",
        title: 'Sour Candy',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
    Movie(
        imageName:"assets/avatar.png",
        title: 'How you like that',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
    Movie(
        imageName:"assets/avatar.png",
        title: 'Stay with me',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
    Movie(
        imageName:"assets/avatar.png",
        title: 'Once in Hollywood',
        time: 'April 7,2022',
        description: 'An important scene from Avatar 3 centered around'
    ),
    Movie(
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
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
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
                              style: TextStyle(fontWeight: FontWeight.w600),
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
                    onTap: () {
                      print("11");
                    },
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
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: OutlineInputBorder(
              ),
            ),


          ),
        )
    ]
    );
  }
}
