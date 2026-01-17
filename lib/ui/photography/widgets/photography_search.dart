import 'package:flutter/material.dart';

class PhotographySearch extends StatelessWidget {
  const PhotographySearch({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Best place to\n Find awesome photos",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for photo",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  shape: RoundedSuperellipseBorder(),
                  height: MediaQuery.of(context).size.height,
                  minWidth: 50,
                  elevation: 0,
                  color: colorScheme.primary,
                  child: Icon(Icons.search, color: Colors.white,),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
