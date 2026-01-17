import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class PhotographyBadge extends StatelessWidget {
  final List<Widget> children;

  const PhotographyBadge({super.key, required this.children});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "For you",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const TabOptions(),
          const SizedBox(height: 30,),
          ...children
        ],
      ),
    );
  }
}
