import 'package:flutter/material.dart';

class LayoutSatu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 72,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 0.5),],
      ),
      child: Row(
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 189, 213, 55),
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW3E29in_4sOwHkPT_iE35g870KvD-vu1uKgplv430Lw&s=10"),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Muhamad Reza Aditia"),
                SizedBox(height: 4),
                Text("XII RPL 1"),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}