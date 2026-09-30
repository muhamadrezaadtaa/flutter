import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Isi Row 1"),
        Text("Isi Row 2"),
        Text("Isi Row 3"),
      ],
    );
  }
}