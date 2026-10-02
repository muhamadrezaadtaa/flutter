import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(color: const Color.fromARGB(255, 255, 238, 0),height: 140,),
            Positioned(
              bottom: -30,
              left: 20,
              child: SizedBox(
                height: 80,
                width: 80,
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBMQq-StCtb58ohho40cmkeMTTXztvXnCjXfnrkkTBYg&s=10"),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Reza Aditia", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("XII RPL 1", style: TextStyle(fontSize: 14, color: Colors.grey)),
                    ],
                  ),
                ),
            ],
          ),
        ),
        ElevatedButton(onPressed: () {}, child: Text("Follow Me")),
      ],
    );
  }
}