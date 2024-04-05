import 'package:flutter/material.dart';
import 'screens/homescreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter chat ui',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(
            255, 222, 61, 50), // Set the scaffold background color
      ),
      home: const homeScreen(),
    );
  }
}
