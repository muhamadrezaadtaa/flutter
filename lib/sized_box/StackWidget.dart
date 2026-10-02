import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 200,width: 200,color: const Color.fromARGB(255, 255, 0, 0),),
        Positioned(
          bottom: 10,
          right: 10,
          child: Icon(Icons.favorite, color: const Color.fromARGB(255, 255, 255, 255),),
        ),
        Positioned(top: 10,left: 10,child: Text("Label"),),
        Positioned(
          right: 25,
          top: 25,
          left:25,
          child: Container(
            height: 100,
            width: 100,
            color: const Color.fromARGB(255, 85, 179, 255),
          )
        ),      
      ]
    );
  }
}