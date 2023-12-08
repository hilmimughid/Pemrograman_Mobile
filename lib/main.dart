import 'package:flutter/material.dart';
import 'package:pemrograman_mobile/identitas/repository.dart';
import 'package:pemrograman_mobile/model/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Tutorial',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'API https://reqres.in/api/unknown'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int blogCount;
  late List listBlog;
  Repository repository = Repository();

  Future getData() async {
    listBlog = [];
    listBlog = await repository.getData();
    setState(() {
      blogCount = listBlog.length;
      listBlog = listBlog;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Text(
                "${listBlog[index].id} | ${listBlog[index].name} | ${listBlog[index].year} | ${listBlog[index].color} | ${listBlog[index].pantone_value}");
          },
          separatorBuilder: (context, Index) {
            return const Divider();
          },
          itemCount: listBlog.length),
    );
  }
}
