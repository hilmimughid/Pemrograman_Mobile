import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? dropdownValue = 'Reamur';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Konverter Suhu"),
      ),
      body: Container(
        margin: const EdgeInsets.all(50),
        child: Column(children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Celcius",
              hintText: "Masukkan Suhu Dalam Celcius",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButton<String>(
            isExpanded: true,
            value: dropdownValue,
            items: const [
              DropdownMenuItem(
                child: Text("Reamur"),
                value: "Reamur",
              ),
              DropdownMenuItem(
                child: Text("Kelvin"),
                value: "Kelvin",
              ),
              DropdownMenuItem(
                child: Text("Fahrenheit"),
                value: "Fahrenheit",
              ),
            ],
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
          ),
          const Text("Hasil"),
          const Text("365"),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                onPressed: () {},
                child: const Text("Konversi Suhu"),
              ))
            ],
          )
        ]),
      ),
    );
  }
}
