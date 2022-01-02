import 'package:budget_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Budged',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SafeArea(
        child: HomeScreen(),
      ),
    );
  }
}
