// Impor package Flutter Material Design.
import 'package:flutter/material.dart';

// Fungsi main yang menjalankan aplikasi.
void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Fungsi build untuk membangun widget.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hilmi App'),
    );
  }
}

// Halaman utama aplikasi.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  // Membuat state untuk widget ini.
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// State untuk MyHomePage.
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // Fungsi untuk menambah counter.
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Fungsi untuk mengurangi counter.
  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  // Fungsi untuk mereset counter.
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  // Membangun tampilan aplikasi.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Hilmi Mughid',
                ),
                const Text(
                  '2141720081\n',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: _resetCounter,
                    tooltip: 'Reset',
                    child: const Icon(Icons.refresh),
                  ),
                  FloatingActionButton(
                    onPressed: _decrementCounter,
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    onPressed: _incrementCounter,
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
