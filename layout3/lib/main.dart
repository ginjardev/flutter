import 'package:flutter/material.dart';
import 'package:layout3/grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: "List View Layout"),
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          child: ListView(
            children: [
              TextButton(
                  style: TextButton.styleFrom(onSurface: Color.fromRGBO(105, 240, 174, 1)),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyGrid())
                    );
                  },
                  child: Text("Next Page")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: listTile,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: listTile,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: listTile,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: listTile,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: listTile,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: listTile,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: listTile,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: listTile,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: listTile,
              ),
            ],
          ),
        ),
      ),
    );
  }

  final listTile = ListTile(
    leading: Icon(
      Icons.circle_rounded,
      color: Color.fromARGB(255, 251, 64, 157),
    ),
    title: Text("Text"),
    subtitle: Text("A little more text here..."),
    tileColor: Color.fromARGB(255, 96, 123, 45),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
  );
}
