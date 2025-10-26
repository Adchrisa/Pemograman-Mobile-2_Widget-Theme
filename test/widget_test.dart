import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile_card_app/main.dart';

void main() {
  testWidgets('Profile Card App loads successfully', (WidgetTester tester) async {
    await tester.pumpWidget(ProfileCardApp());

    expect(find.text('Profile Card App'), findsOneWidget);
  });
}
