import 'package:flutter/material.dart'; // Mengimpor paket material.dart dari Flutter

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi Flutter
}

class MyApp extends StatelessWidget {
  // Membuat class MyApp yang merupakan widget tanpa state
  const MyApp({super.key}); // Constructor untuk class MyApp

  @override
  Widget build(BuildContext context) {
    // Method build untuk membangun widget
    return MaterialApp(
      // Mengembalikan MaterialApp sebagai root dari widget tree
      title: 'Hilmi Mughid App', // Judul aplikasi
      theme: ThemeData(
        // Tema aplikasi
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.lightBlue), // Skema warna aplikasi
        useMaterial3: true, // Menggunakan Material versi 3
      ),
      home:
          const MyHomePage(title: 'Hilmi Mughid App'), // Halaman utama aplikasi
    );
  }
}

class MyHomePage extends StatefulWidget {
  // Membuat class MyHomePage yang merupakan widget dengan state
  const MyHomePage(
      {super.key, required this.title}); // Constructor untuk class MyHomePage

  final String title; // Judul halaman

  @override
  State<MyHomePage> createState() =>
      _MyHomePageState(); // Membuat state untuk MyHomePage
}

class _MyHomePageState extends State<MyHomePage> {
  // Membuat class _MyHomePageState sebagai state dari MyHomePage
  int _counter = 0; // Variabel untuk menyimpan nilai counter

  // Method untuk menambah counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Method untuk mengurangi counter
  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  // Method untuk mereset counter
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Method build untuk membangun widget dengan state
    return Scaffold(
      // Mengembalikan Scaffold sebagai root dari widget tree dengan state
      appBar: AppBar(
        // AppBar aplikasi
        backgroundColor: Theme.of(context)
            .colorScheme
            .inversePrimary, // Warna latar belakang AppBar
        title: Text(widget.title), // Judul AppBar
      ),
      body: Stack(
        // Body aplikasi berupa Stack widget
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Menampilkan gambar avatar
                Image.asset(
                  'assets/images/avatar.jpg',
                  width: 200,
                  height: 200,
                ),
                const Text(
                  'Hilmi Mughid',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '2141720081\n',
                  style: TextStyle(fontSize: 20),
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
                  // Tombol untuk mereset counter
                  FloatingActionButton(
                    onPressed: _resetCounter,
                    tooltip: 'Reset',
                    child: const Icon(Icons.refresh),
                  ),
                  // Tombol untuk mengurangi counter
                  FloatingActionButton(
                    onPressed: _decrementCounter,
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ),
                  // Tombol untuk menambah counter
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
