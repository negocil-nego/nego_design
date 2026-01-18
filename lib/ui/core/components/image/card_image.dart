import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class CardImage extends StatelessWidget {
  final CardImageModel model;

  const CardImage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.27 / 1,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: isImageNetwork(model.image)
                ? NetworkImage(model.image)
                : AssetImage(model.image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 20,
                  children: [
                    ClipReactButton(
                      child: Icon(Icons.share, color: Colors.white),
                    ),
                    ClipReactButton(
                      child: Icon(Icons.heart_broken, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
