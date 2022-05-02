import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  bool isActive = false;

  void taphandler() {
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () => taphandler(),
            child: Container(
              height: 200,
              width: 230,
              decoration:
                  BoxDecoration(color: isActive ? Colors.green : Colors.grey),
              child: isActive ? Text("Active") : Text("Inactive"),
            ),
          ),
        ),
      ),
    );
  }
}
