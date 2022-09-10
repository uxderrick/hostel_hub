import 'package:flutter/material.dart';
import 'package:hostel_hub/Screens/welcome_screen_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'DM Sans'),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}
