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
      home: Scaffold(
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
            DropdownButton(
              isExpanded: true,
              value: "Reamur",
              items: [
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
              onChanged: (value) {},
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
      ),
    );
  }
}
