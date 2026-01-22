import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class NegoDetails extends StatelessWidget {
  final AvatarPanelModel avatar;
  final Widget child;
  final String? image;
  
  const NegoDetails({super.key, this.image, required this.avatar, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailsImageContainer(
              image: image ?? avatar.image,
              model: avatar,
            ),
            const SizedBox(height: 10,),
            child
          ],
        ),
      ),
    );
  }
}
