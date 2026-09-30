import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
      height: 400,
      width: 300,
      color: const Color.fromARGB(255, 94, 94, 94),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 150,
            width: 150,
            color: const Color.fromARGB(255, 255, 0, 0),
          ),
          Column(
            children: [
                Text("Nama : Reza Aditia"),
                Text("NIS : 123456789"),
                Text("Kelas : 12 RPL 1"),
            ],
          ),
        ],
      ),
      ),
    );
  }
}