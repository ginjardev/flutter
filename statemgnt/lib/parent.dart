import 'package:flutter/material.dart';

class ParentClass extends StatefulWidget {
  const ParentClass({Key? key}) : super(key: key);

  @override
  State<ParentClass> createState() => _ParentClassState();
}

class _ParentClassState extends State<ParentClass> {
  bool isActive = false;

  void parentTapHandler(bool newValue) {
    setState(() {
      isActive = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(
        child: ChildClass(isActive: isActive, onChanged: parentTapHandler,)
      )
      ),
    );
  }
}

class ChildClass extends StatelessWidget {
  ChildClass({Key? key, this.isActive = false, required this.onChanged})
      : super(key: key);

  bool isActive;
  ValueChanged<bool> onChanged;

  void taphandler() {
    onChanged(!isActive);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => taphandler(),
      child: Container(
        height: 100,
        width: 160,
        decoration: BoxDecoration(color: isActive ? Colors.green : Colors.grey),
        child: Center(
          child: Text(isActive ? "Active" : "Inactive"),
        ),
      ),
    );
  }
}
