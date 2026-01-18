import 'package:flutter_test/flutter_test.dart';
import 'package:nego_design/_import.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets(
    'ImageBackgroundContainer renders its child widget',
        (tester) async {
      const customLabel = 'Custom Label';

      await tester.pumpWidget(
        NegoApp(
          home: ImageBackgroundContainer(
            image: NegoAppImage.image1,
            child: Text(customLabel),
          ),
        ),
      );

      expect(find.text(customLabel), findsOneWidget);
    },
  );
}
