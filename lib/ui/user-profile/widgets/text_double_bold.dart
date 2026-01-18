import 'package:flutter/material.dart';

class TextDoubleBold extends StatelessWidget {
  final String textOne;
  final String textTwo;

  const TextDoubleBold({super.key, required this.textOne, required this.textTwo});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textOne,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),
        Text(
          textTwo,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
