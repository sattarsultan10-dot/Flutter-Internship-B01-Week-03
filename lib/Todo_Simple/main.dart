import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TodoPage());
  }
}

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<String> Todos = [];
  TextEditingController controller = TextEditingController();
  void addTodo() {
    if (controller.text.isNotEmpty) {
      setState(() {
        Todos.add(controller.text);
      });

      controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo App")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: "Enter the todo",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(onPressed: addTodo, child: Text("Add")),
            Expanded(
              child: ListView.builder(
                itemCount: Todos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(Todos[index]),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          Todos.removeAt(index);
                        });
                      },
                      icon: Icon(Icons.delete),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
