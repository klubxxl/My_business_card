import 'package:flutter/material.dart';
import 'package:moja_wizytowka/Screens/my_buisness_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moja Wizytówka',
      theme: ThemeData(
        fontFamily: 'LibreBaserville',
        primarySwatch: Colors.blue,
      ),
      home: const MyBusinessCardScreen(),
    );
  }
}
