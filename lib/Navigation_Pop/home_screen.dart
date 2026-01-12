import 'package:flutter/material.dart';
import 'package:flutter_projects/Navigation_Pop/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home Screen", style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(username: "Sultan"),
                  ),
                );
              },
              child: const Text("Go to Profile Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/settings',
                  arguments: "Hello Sir Tayyab",
                );
              },
              child: const Text("Go to Settings Page "),
            ),
          ],
        ),
      ),
    );
  }
}
