import 'package:flutter/material.dart';

class Latihan3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
          child: Container(
            color: const Color.fromARGB(255, 0, 255, 0),
            height: 80,
            alignment: Alignment.center,
            child: Text("Pamasukan"),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
          child: Container(
            color: const Color.fromARGB(255, 119, 255, 119),
            height: 80,
            alignment: Alignment.center,
            child: Text("Pengeluaran"),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
          child: Container(
            color: const Color.fromARGB(255, 165, 255, 165),
            height: 80,
            alignment: Alignment.center,
            child: Text("Saldo"),
            ),
          ),
        ],
      ),
    );
  }
}