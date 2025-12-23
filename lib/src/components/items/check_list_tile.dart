import 'package:flutter/material.dart';

class CheckListTile extends StatelessWidget {
  final String text;
  final bool isChecked;
  const CheckListTile({super.key, required this.text, this.isChecked = true});
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        isChecked
            ? Icon(Icons.check_circle, color: colorScheme.primary)
            : Icon(Icons.circle_outlined, color: colorScheme.primary),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 14, color: colorScheme.outline),
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
