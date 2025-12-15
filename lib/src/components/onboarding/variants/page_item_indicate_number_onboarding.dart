import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class PageItemIndicateNumberOnboarding extends StatelessWidget {
  final PageBackgroundType backgroundType;
  final Alignment alignmentButton;
  final OnboardingModel model;
  final Function()? onPressed;
  final int length;
  final int index;
  const PageItemIndicateNumberOnboarding({
    super.key,
    required this.model,
    required this.index,
    required this.length,
    this.alignmentButton = Alignment.bottomRight,
    this.backgroundType = PageBackgroundType.none,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return PageScaffoldOnboarding(
      key: key,
      model: model,
      backgroundType: backgroundType,
      topWidgets: [_RowIndicatorNumber(index: index, length: length)],
      bottomWidgets: [
        FadeAnimation(
          key: ValueKey('fade_title_$index'),
          delay: 10,
          child: Text(
            model.title,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        FadeAnimation(
          key: ValueKey('fade_description_$index'),
          delay: 50,
          child: Text(
            model.description,
            style: TextStyle(fontSize: 15, color: Colors.white, height: 1.9),
          ),
        ),
        FadeAnimation(
          key: ValueKey('fade_button_$index'),
          delay: 90,
          child: OnboardingButton(alignment: alignmentButton, onPressed: onPressed ?? model.onPressed),
        ),
      ],
    );
  }
}

class _RowIndicatorNumber extends StatelessWidget {
  final int index;
  final int length;
  const _RowIndicatorNumber({required this.index, required this.length});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('$index', style: TextStyle(fontSize: 30, color: Colors.white)),
        Text('/$length', style: TextStyle(fontSize: 15, color: Colors.white)),
      ],
    );
  }
}
