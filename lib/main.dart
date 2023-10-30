import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hilmi Mughid 2141720081',
      home: Scaffold(
        appBar: AppBar(title: const Text('Hilmi Mughid 2141720081')),
        body: Container(
          padding: const EdgeInsets.all(20),
          // margin: const EdgeInsets.all(20),
          color: Colors.grey,
          child: Column(
            children: [
              Expanded(
                  child: Container(
                color: Colors.red,
              )),
              Container(
                width: 200,
                height: 100,
                color: Colors.red,
              ),
              Expanded(
                  child: Container(
                color: Colors.blue,
              )),
              Expanded(
                  child: Container(
                color: Colors.green,
              )),
              Container(width: 200, height: 100, color: Colors.blue),
              const Text("Merah"),
              const Text("Biru")
            ],
          ),
        ),
      ),
    );
  }
}
