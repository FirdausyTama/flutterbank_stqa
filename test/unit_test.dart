import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  testWidgets('input page', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ViewPage(
          name: 'Atama Cahya',
          identitynumber: '02',
          birthdate: '14 mei 2004',
          gender: 'laki laki',
          phonenumber: '082119454200',
          lasteducation: 'SMA',
          religion: 'Islam',
          job: 'Kuliah',
          address: 'jogja',
          accounttype: 'Premium',
        ),
      ),
    );

    expect(find.text('Name: Atama Cahya'), findsOneWidget);
    expect(find.text('Identity Number: 02'), findsOneWidget);
    expect(find.text('Birht Date: 14 mei 2004'), findsOneWidget);  // Note the typo in "Birht Date"
    expect(find.text('Gender: laki laki'), findsOneWidget);
    expect(find.text('Phone Number: 082119454200'), findsOneWidget);
    expect(find.text('Last Education: SMA'), findsOneWidget);
    expect(find.text('Religion: Islam'), findsOneWidget);
    expect(find.text('Job: Kuliah'), findsOneWidget);
    expect(find.text('Address: jogja'), findsOneWidget);
    expect(find.text('Account Type: Premium'), findsOneWidget);
    });
}