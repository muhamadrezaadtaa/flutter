import 'package:flutter/material.dart';

class LayoutDua extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 91, 91, 91),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(Icons.image, color: const Color.fromARGB(255, 255, 255, 255),),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            padding: EdgeInsets.all(4),
            color: const Color.fromARGB(255, 255, 2, 2),
            child: Text("20%"),
          ),
        ),
        Positioned(bottom: 0, right: 0, child: Icon(Icons.favorite_border),),
      ],
    );
  }
}