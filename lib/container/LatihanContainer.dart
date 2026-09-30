import 'package:flutter/material.dart';

class LatihanContainer extends StatelessWidget {
  const LatihanContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(15),
      alignment: Alignment.center, 
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 150, 40),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: 200,
        height: 60,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 242, 255, 3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
        'XII RPL 1',
        style: TextStyle(
          fontSize: 18,
          color: const Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}