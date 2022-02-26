import 'package:flutter/material.dart';
import 'package:managing_state/parent.dart';

class Child extends StatelessWidget {
  Child({Key? key, this.isActive = false, required this.changed})
      : super(key: key);

  bool isActive;
  Function changed;

  void tapEffect() {
    changed();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      onTap: () {
        tapEffect();
      },
      child: Container(
        height: 200,
        width: 300,
        color: isActive ? Colors.green : Colors.grey,
        child: Center(child: Text(isActive ? "Active" : "InActive")),
      ),
    ));
  }
}
