import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return CupertinoAlertDialog(
                    title: Text("Delete Item"),
                    content: Text("Are you sure?"),
                    actions: [
                      TextButton(onPressed: () {}, child: Text("Yes")),
                      TextButton(onPressed: () {}, child: Text("No")),
                    ],
                  );
                });
          },
          child: Text("Delete"),
        ),
      ),
    );
  }
}
