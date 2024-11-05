import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aplikasiku/main.dart';

void main() {
  testWidgets('Navigasi Login ke Home', (WidgetTester tester) async {
    // Bangun aplikasi dan tampilkan layar pertama.
    await tester.pumpWidget(ResponsoApp());

    // Pastikan kita berada di layar Login dengan mencari tombol 'Masuk'.
    expect(find.text('Masuk'), findsOneWidget);

    // Isi email dan password.
    await tester.enterText(find.byType(TextField).first, 'user@example.com');
    await tester.enterText(find.byType(TextField).last, 'password');

    // Klik tombol 'Masuk' dan tunggu animasi selesai.
    await tester.tap(find.text('Masuk'));
    await tester.pumpAndSettle();

    // Pastikan kita berada di layar Home dengan mencari teks 'Selamat Datang di Home'.
    expect(find.text('Selamat Datang di Home'), findsOneWidget);
  });
}
