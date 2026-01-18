import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class AvatarPanel extends StatelessWidget {
  final AvatarPanelModel model;
  final double radius;

  const AvatarPanel({super.key, required this.model, this.radius = 20});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(radius),
          bottomRight: Radius.circular(radius),
        ),
        color: colorScheme.surface,
      ),
      child: Column(
        children: [
          CircleAvatarSwitcher(maxRadius: 50, image: model.image),
          const SizedBox(height: 20),
          Text(
            model.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            model.subtitle,
            style: TextStyle(
              fontSize: 15,
              color: colorScheme.scrim.withAlpha(200),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextDoubleBold(textOne: '10', textTwo: 'Realizado'),
              const SizedBox(width: 25),
              TextDoubleBold(textOne: '13', textTwo: 'Seguidor'),
            ],
          ),
          ActionPanelButtons()
        ],
      ),
    );
  }
}
