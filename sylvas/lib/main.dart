import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const HorizonsApp(title: 'Flutter Demo Home Page'),
    );
  }
}

class HorizonsApp extends StatefulWidget {
  const HorizonsApp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HorizonsApp> createState() => _HorizonsAppState();
}

class _HorizonsAppState extends State<HorizonsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('SliverAppBar'),
            backgroundColor: Colors.green,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/black.jpg', fit: BoxFit.cover),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 150.0,
            delegate: SliverChildListDelegate(
              [
                Container(color: Colors.red),
                Container(color: Colors.purple),
                Container(color: Colors.green),
                Container(color: Colors.orange),
                Container(color: Colors.yellow),
                Container(color: Colors.pink),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
