import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 50, color: const Color.fromARGB(255, 255, 0, 0),),
        Expanded(child: Container(color: const Color.fromARGB(255, 0, 0, 0),height: 50,),),
        Expanded(
          flex: 2,
          child: Container(
            color: const Color.fromARGB(255, 0, 255, 0),
            height: 50,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: const Color.fromARGB(255, 191, 255, 0),
            height: 50,
          ),
        ),
      ],
    );
  }
}