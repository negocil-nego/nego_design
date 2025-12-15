import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nego_design/_import.dart';

void main() {
  testWidgets(
    'FadeAnimation should display the provided child widget after animation',
        (tester) async {
      const childKey = ValueKey('fade_title_0');

      await tester.pumpWidget(
        NegoApp(
          home: const FadeAnimation(
            child: Text('Animated Text', key: childKey),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byKey(childKey), findsOneWidget);
    },
  );

}
