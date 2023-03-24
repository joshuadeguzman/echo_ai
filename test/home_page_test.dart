import 'package:echo_ai/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomePage widget tests', () {
    late Widget testWidget;
    const productManagerTitle = 'Product Manager';
    const trainingCoachTitle = 'Training Coach';
    const standupComedianTitle = 'Standup Comedian';
    const travelGuideTitle = 'Travel Guide';

    setUp(() {
      testWidget = const MaterialApp(
        home: HomePage(),
      );
    });

    testWidgets('HomePage displays character selection',
        (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);

      expect(find.text('Select a Character'), findsOneWidget);
      expect(find.text(productManagerTitle), findsOneWidget);
      expect(find.text(trainingCoachTitle), findsOneWidget);
      expect(find.text(standupComedianTitle), findsOneWidget);
      expect(find.text(travelGuideTitle), findsOneWidget);
    });
  });
}
