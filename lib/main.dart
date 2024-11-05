import 'package:sweet_bites_bakery/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sweet Bites Bakery',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
        ).copyWith(secondary: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
