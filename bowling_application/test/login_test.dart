import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bowling_application/Screens/Login/components/login_form.dart';

void main() {
  testWidgets('Login form validation and successful login test',
      (WidgetTester tester) async {
    // Build our login form widget.
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: const LoginForm(),
      ),
    ));

    // Enter valid email
    await tester.enterText(
        find.byKey(Key('email_field')), 'validemail@example.com');
    // Enter valid password
    await tester.enterText(find.byKey(Key('password_field')), 'securepassword');

    // Expect the login action to print "Login successful" to the console
    await expectLater(
      () async {
        // Tap the login button
        await tester.tap(find.widgetWithText(ElevatedButton, 'LOGIN'));
        await tester.pump();
      },
      prints('Login successful\n'),
    );
  });
}
