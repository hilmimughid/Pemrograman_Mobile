import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                          color: Colors.white,
                          child: Center(
                              child: Image.network(
                                  'https://i.pinimg.com/736x/51/98/c9/5198c9ecd826b7b65e69ce201bc21550.jpg',
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
                      child: Text("Pemesanan Tiket Travel",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold))),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(50),
                  color: Colors.brown,
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(selectDate.toString(),
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      const SizedBox(
                        height: 25,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2009),
                                  lastDate: DateTime(2025))
                              .then((value) {
                            setState(() {
                              selectDate = value!;
                            });
                          });
                        },
                        child: const Text(
                          "Pilih Tanggal",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
        ));
  }
}
