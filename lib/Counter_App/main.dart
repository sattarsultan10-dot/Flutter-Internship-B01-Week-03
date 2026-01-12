import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: count_page()),
    );
  }
}

class count_page extends StatefulWidget {
  const count_page({super.key});

  @override
  State<count_page> createState() => _count_pageState();
}

class _count_pageState extends State<count_page> {
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counter.toString(), style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            ElevatedButton(onPressed: increment, child: Text("Increment")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: decrement, child: Text("Decrement")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: reset, child: Text("Reset")),
          ],
        ),
      ),
    );
  }
}
