import 'package:flutter/material.dart';
import 'package:layout/main.dart';
import 'package:layout/title.dart';
import 'package:layout/textSection.dart';
import 'package:layout/buttonSection.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Image.asset('images/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
            //scale: 1.0,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
