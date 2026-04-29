import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_final_project/main.dart';

void main() {
  testWidgets('App renders without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Recipe Catalog'), findsOneWidget);
  });
}
