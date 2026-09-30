import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJN5xWOdcjpjBo3-2JpoVC8cOuQq03_4FXcqbFrySaLw&s=10",
          ),
          fit: BoxFit.cover,
        ) 
      ),
      child: Text("Foto ini diambil di braga tempat sejuta kenangan.",
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        )
      ),
    );
  }
}