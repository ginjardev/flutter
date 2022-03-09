import 'package:flutter/material.dart';

class ListingApp extends StatefulWidget {
  const ListingApp({Key? key}) : super(key: key);

  @override
  State<ListingApp> createState() => _ListingAppState();
}

class _ListingAppState extends State<ListingApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: const Color(0xffeeee00),
                height: 250.0,
                alignment: Alignment.center,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    //itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            color: index.isOdd ? Colors.grey : Colors.black,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Center(
                            child: Text('$index'),
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                color: const Color(0xff008000),
                height: 100.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
              Container(
                color: Color.fromARGB(255, 0, 41, 128),
                height: 350.0,
                alignment: Alignment.center,
                child: ListView.builder(
                  //scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          //width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            color: index.isOdd ? Colors.teal : Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Center(
                            child: Text('$index'),
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                color: Color.fromARGB(255, 66, 0, 128),
                height: 300.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
