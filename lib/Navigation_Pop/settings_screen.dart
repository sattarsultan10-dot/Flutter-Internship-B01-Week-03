import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: Center(
        child: Text(
          args ?? "No settings data",
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
