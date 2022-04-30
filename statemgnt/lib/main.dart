import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemgnt/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<Model>(
        create: (context) => Model(),
        child: MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text("Stl"),
            ),
            body: Row(
              children: [
                Container(
                  color: Colors.blueGrey,
                  child: Consumer<Model>(
                    builder: (context, value, child) {
                      return ElevatedButton(
                          onPressed: () {
                            value.changeText();
                          },
                          child: Text("Click Me"));
                    },
                  ),
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.teal,
                  child: Consumer<Model>(
                    builder: (context, value, child) {
                      return Center(child: Text(value.text));
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
