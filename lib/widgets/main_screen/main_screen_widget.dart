
import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  static const List<Widget>_widgetOptions=<Widget>[
    Text("News"),
    Text("Movies"),
    Text("Serials"),
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
      body: Center(
        child: _widgetOptions[_selectedItem],
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
