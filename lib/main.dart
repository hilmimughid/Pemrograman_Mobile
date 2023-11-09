import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  DateTime selectDate = DateTime.now();

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
                            child: Icon(Icons.location_on,
                                size: 100, color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                          child: Center(
                              child: Image.network(
                                  'https://buatlogoonline.com/wp-content/uploads/2022/10/Logo-Garuda-Indonesia.png',
                                  fit: BoxFit.cover)),
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
