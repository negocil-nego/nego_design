import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class DetailsImageContainer extends StatelessWidget {
  final Function()? onTapBack;
  final AvatarPanelModel model;
  final String image;

  const DetailsImageContainer({
    super.key,
    required this.image,
    required this.model,
    this.onTapBack,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BoxDecorationImageContainer(
      borderRadius: BorderRadius.zero,
      height: height / 2,
      width: width,
      image: image,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: onTapBack,
              child: ClipReactButton(
                width: 20,
                height: 20,
                color: Colors.black.withValues(alpha: 0.5),
                imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Center(
                  child: Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatarSwitcher(image: model.image, maxRadius: 28),
                    const SizedBox(width: 10),
                    Text(
                      model.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                    ),
                  ],
                ),
                ClipReactButton(
                  width: 30,
                  height: 30,
                  color: Colors.black.withValues(alpha: 0.5),
                  imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  borderRadius: BorderRadius.circular(50),
                  child: Center(
                    child: Icon(Icons.arrow_downward_sharp, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
