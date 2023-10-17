import 'package:bytes_notes_app/main.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_driver/flutter_driver.dart' as d;
import 'package:flutter_test/flutter_test.dart' as t;
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  d.FlutterDriver? driver;

  t.setUpAll(() async {
    driver = await d.FlutterDriver.connect();
  });

  t.tearDownAll(() async {
    if (driver != null) driver!.close();
  });

  t.test('Tap Button Test', () async {
    final button = d.find.byValueKey('floating_button');
    await driver?.tap(button);
    await driver?.waitFor(d.find.byType('Icon'));

    t.group('end-to-end test', () {
      t.testWidgets('tap on the floating action button, verify counter',
          (tester) async {
        // Load app widget.
        await tester.pumpWidget(const MyApp());

        // Verify the counter starts at 0.
        t.expect(d.find.text('0'), t.findsOneWidget);

        // Finds the floating action button to tap on.
        final fab = t.find.byKey(const Key('increment'));

        // Emulate a tap on the floating action button.
        await tester.tap(fab);

        // Trigger a frame.
        await tester.pumpAndSettle();

        // Verify the counter increments by 1.
        t.expect(t.find.text('1'), t.findsOneWidget);
      });
    });
  });
}
