import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class AvatarTile extends StatelessWidget {
  final AvatarTileModel avatar;
  final double maxRadius;

  const AvatarTile({super.key, required this.avatar, this.maxRadius = 30});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatarSwitcher(maxRadius: maxRadius, image: avatar.image),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                avatar.title,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(avatar.subtitle, style: TextStyle(fontSize: 13)),
                  Text(avatar.bottomText, style: TextStyle(fontSize: 13)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
