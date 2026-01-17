import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class AppToast {
  static void show({
    required BuildContext context,
    required String title,
    String? description,
  }) {
    toastification.show(
      context: context,
      autoCloseDuration: const Duration(seconds: 5),
      description: description != null ? RichText(
        text: TextSpan(
          text: description,
          style: TextStyle(color: Colors.black),
        ),
      ) : null,
      title: Text(title),
    );
  }
}
