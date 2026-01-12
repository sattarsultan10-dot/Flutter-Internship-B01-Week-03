import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(child: ProfileCard())),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(offset: Offset(5, 0), blurRadius: 12, color: Colors.black),
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(
              "https://picsum.photos/id/1027/300/300",
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Alexa",
            style: TextStyle(
              fontSize: 8,
              fontStyle: FontStyle.italic,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.facebook, color: Colors.blue),
              Icon(Icons.email, color: Colors.blueGrey),
              Icon(Icons.circle_notifications, color: Colors.red),
            ],
          ),
        ],
      ),
    );
  }
}
