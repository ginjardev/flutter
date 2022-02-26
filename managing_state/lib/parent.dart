import 'package:flutter/material.dart';
import 'package:managing_state/child.dart';

class Parent extends StatefulWidget {
  const Parent({Key? key}) : super(key: key);

  @override
  _ParentState createState() => _ParentState();
}

class _ParentState extends State<Parent> {

  bool isActive = false;

  void handleTapboxChanged() {
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Child(
        isActive: isActive,
        changed: handleTapboxChanged,
      ),
    );
  }
}
