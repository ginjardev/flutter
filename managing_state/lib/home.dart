import 'package:flutter/material.dart';
import 'package:managing_state/main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isActive = false;

  _tapped() {
    setState(() {
      changeActive();
    });
  }

  void changeActive() {
    if(!isActive){
      isActive = !isActive;
    }else{
      isActive = !isActive;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          GestureDetector(
            onTap: (() {
              _tapped();
            }),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: isActive ? Colors.green : Colors.grey,
              ),
              child: Center(
                child: Text(
                  isActive ? "Active" : "Not Active", 
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
