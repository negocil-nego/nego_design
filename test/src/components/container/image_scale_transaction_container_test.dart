import 'package:flutter_test/flutter_test.dart';
import 'package:nego_design/_import.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets(
    'ImageScaleTransactionContainer renders its child widget',
        (tester) async {
      const customLabel = 'Custom Label';

      await tester.pumpWidget(
        NegoApp(
          home: ImageScaleTransactionContainer(
            image: AppImage.image,
            child: Text(customLabel),
          ),
        ),
      );

      expect(find.text(customLabel), findsOneWidget);
      expect(find.byType(Stack), findsOneWidget);
      expect(find.byType(ScaleTransition), findsOneWidget);
    },
  );
}