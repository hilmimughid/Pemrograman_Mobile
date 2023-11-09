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
            color: Colors.grey,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 200,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.red,
                          child: const Center(
                              child: Text(
                            "2",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: const Center(
                              child: Text("3",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 30))),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Colors.orange,
                  child: const Center(
                      child: Text("4",
                          style: TextStyle(color: Colors.white, fontSize: 30))),
                )),
                Expanded(
                    child: Container(
                  color: Colors.brown,
                  child: const Center(
                      child: Text("5",
                          style: TextStyle(color: Colors.white, fontSize: 30))),
                )),
              ],
            ),
          ),
        ));
  }
}
