import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemgnt/model.dart';
import 'package:statemgnt/screenOne.dart';
import 'package:statemgnt/parent.dart';
void main() {
  runApp(const ParentClass());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Model>(
        create: (context) => Model(),
        child: MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text("Stl"),
            ),
            body: Row(
              children: [
                MyButton(),
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

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mymodel = Provider.of<Model>(context, listen: false);
    return ElevatedButton(
          onPressed: () {
            mymodel.changeText();
          },
          child: const Text("Click Me"));
  }
}
