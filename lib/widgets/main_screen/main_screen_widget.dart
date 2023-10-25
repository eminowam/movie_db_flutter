
import 'package:flutter/material.dart';
import 'package:the_movie_db/widgets/movie_list/movie_list.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  static final List<Widget>_widgetOptions=<Widget>[

  ];


  int _selectedItem=0;
  void onSelectTab(int index){
    if(_selectedItem==index) return;
    setState(() {
      _selectedItem=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TMDB"),
        centerTitle: true,
      ),
      body:IndexedStack(
        index: _selectedItem,
        children: [
        Text("News"),
        MovieListWidget(),
        Text("Serials"),
      ]
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedItem,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
          label: "News"),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter),
              label: "Movies"),
          BottomNavigationBarItem(
              icon: Icon(Icons.tv),
              label: "Serials"),
        ],
        onTap: onSelectTab
      ),
    );
  }
}
