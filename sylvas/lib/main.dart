import 'package:flutter/material.dart';
import 'package:sylvas/listing.dart';
import 'package:sylvas/slivergrid.dart';

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
      home: const HorizonsApp(title: "Slivers"),
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
  int length = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   title: Text(widget.title),
          // ),
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
              title: Text("Slivers"),
              pinned: true,
              centerTitle: true,
              expandedHeight: 200,
              backgroundColor: Color.fromARGB(255, 155, 241, 74),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "images/black.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.add_circle),
                  tooltip: 'Add new entry',
                  onPressed: () {
                    setState(() {
                      length++;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.remove_circle),
                  tooltip: 'Add new entry',
                  onPressed: () {
                    setState(() {
                      length--;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.navigate_next),
                  tooltip: 'Next',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ListingApp()));
                  },
                ),
              ]),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 7),
                  decoration: BoxDecoration(
                      color: index.isOdd ? Colors.blueGrey : Colors.teal,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  height: 150,
                  child: Center(
                    child: Text(
                      '${index}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
              childCount: length,
            ),
          ),
        ],
      )),
    );
  }
}
