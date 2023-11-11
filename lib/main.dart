import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = 'Reamur';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konversi Suhu"),
      ),
      body: Container(
        margin: EdgeInsets.all(50),
        child: Column(children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "Celcius",
              hintText: "Masukkan Suhu Dalam Celcius",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButton<String>(
            isExpanded: true,
            value: dropdownValue,
            items: <String>['Reamur', 'Kelvin', 'Fahrenheit']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
          ),
          Text("Hasil"),
          Text("365"),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                onPressed: () {},
                child: Text("Konversi Suhu"),
              ))
            ],
          )
        ]),
      ),
    );
  }
}
