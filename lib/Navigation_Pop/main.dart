import 'package:flutter/material.dart';
import 'package:flutter_projects/Navigation_Pop/home_screen.dart';
import 'package:flutter_projects/Navigation_Pop/profile_screen.dart';
import 'package:flutter_projects/Navigation_Pop/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        "/": (context) => HomeScreen(),
        "/profile": (context) => ProfileScreen(),
        "/settings": (context) => SettingsScreen(),
      },
    );
  }
}
