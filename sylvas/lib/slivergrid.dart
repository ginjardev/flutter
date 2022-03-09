import 'package:flutter/material.dart';

class SliverGridApp extends StatelessWidget {
  const SliverGridApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.teal[200],
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("Sliver Grid"),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 241, 99, 144),
            expandedHeight: 150,
            elevation: 10.0,
            floating: true,
            snap: true,
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              //crossAxisSpacing: 10,
              //mainAxisSpacing: 10,
            ),
            delegate: SliverChildListDelegate([
              obj(),
              obj(),
              obj(),
              obj(),
              obj(),
              obj(),
              obj(),
              obj(),
              obj(),
              obj(),
              obj(),
              obj(),
            ]),
          ), 
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => obj2(index),
              childCount: 20
            )
          )
        ],
      ),
    ));
  }

  Widget obj(){
    return Container(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
    decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.all(Radius.circular(12))
    ),
    child: Center(
      child: Text(
        'Cool',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
  } 

  Widget obj2(int index){
    return Container(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
    height: 150,
    width: 250,
    decoration: BoxDecoration(
        color: index.isOdd ? Colors.green[200] : Colors.amber[200],
        borderRadius: BorderRadius.all(Radius.circular(12))
    ),
    child: Center(
      child: Text(
        'Cool $index' ,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
  } 
}
