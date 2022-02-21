import 'package:flutter/material.dart';
import 'package:layout3/main.dart';

class MyGrid extends StatefulWidget {
  const MyGrid({Key? key}) : super(key: key);

  @override
  _MyGridState createState() => _MyGridState();
}

class _MyGridState extends State<MyGrid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Grid Layout"),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        body: Container(
          color: Color.fromARGB(255, 153, 151, 151),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              myCard,
              myCard,
              myCard,
              myCard,
              myCard,
              myCard,
              myCard,
              myCard,
              Center(
                child: SizedBox(
                    height: 25,
                    width: 70,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context)=> MyHomePage(title: 'List View Layout')
                            ),
                          );
                        },
                        child: Text("Back")
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final myCard = Card(
    margin: EdgeInsets.all(12.0),
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      child: Image.asset(
        'images/black.jpg',
        fit: BoxFit.cover,
      ),
    ),
  );
}
