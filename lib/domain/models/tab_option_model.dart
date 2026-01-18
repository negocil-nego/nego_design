import 'package:flutter/material.dart';

class TabOptionModel {
  final String text;
  final bool selected;
  final Widget? child;

  const TabOptionModel({ this.text = "", this.selected = false, this.child });

  @override
  String toString() {
    return "TabOptionModel(text=$text, selected=$selected)";
  }

  @override
  bool operator ==(Object other) {
    if (other is! TabOptionModel) return false;
    return text == other.text;
  }
}