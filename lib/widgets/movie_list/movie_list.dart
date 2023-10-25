import 'package:flutter/material.dart';

class  MovieListWidget extends StatelessWidget {
  const  MovieListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
        itemExtent: 163,
        itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Stack(
          children :[
            Container(
            decoration: BoxDecoration(
              color: Colors.white,
                border: Border.all(color: Colors.black.withOpacity(0.2)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: Offset(0,2)
              )]
            ),
            clipBehavior: Clip.hardEdge,
            child:const  Row(
              children: [
                Image(image: AssetImage('assets/avatar.png')),
                SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text("Avatar 3",
                      style: TextStyle(
                        fontWeight: FontWeight.w600
                      ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,),
                      SizedBox(height: 5,),
                      Text("April 7 ,2022",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,),
                      SizedBox(height: 20,),
                      Text("An important scene from Avatar 3 centered around"
                           "Kiri has been detailed far ahead of the sequel's "
                           "planned release in 2024.",
                       maxLines: 2,
                       overflow: TextOverflow.ellipsis,),
                    ],
                  ),
                ),
                SizedBox(width: 7,)
              ],
            ),
          ),
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: (){
                  print("11");
                },
              ),
            )
          ]
        ),
      );
        }
    );
  }
}
