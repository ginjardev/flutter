import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemgnt/model.dart';

void main() {
  runApp(const MyHomePage());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<Model>(
      create: (context) => Model(),
      child: MaterialApp(
        home: Scaffold(
        appBar: AppBar(
          title: Text("Stl"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200,
                width: 150,
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: Consumer<Model>(builder: (context, value, child) {
                  return ElevatedButton(
                    onPressed: (() {
                      value.changeText();
                    }),
                    child: Text("Click"),
                  );
                }),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                ),
                child: Consumer<Model>(builder: ((context, value, child) {
                  return Center(child: Text(value.text));
                })),
              ),
            ],
          ),
        ),
      ),
      )
    );
  }
}