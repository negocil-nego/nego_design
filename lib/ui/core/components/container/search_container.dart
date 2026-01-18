import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class SearchContainer extends StatelessWidget {
  final String text;

  const SearchContainer({super.key, this.text = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
          SizedBox(height: 20),
          InputButtonSearch(),
        ],
      ),
    );
  }
}
