import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class TabContainer extends StatelessWidget {
  final List<TabOptionModel> items;
  final double? width;
  final String? title;

  const TabContainer({super.key, this.width, this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: width ?? MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: Colors.white,
      ),
      child: title == null
          ? TabOptions(items: items)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                TabOptions(items: items),
              ],
            ),
    );
  }
}
