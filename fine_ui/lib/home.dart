import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  //final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;

  void onTappedItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Demo"),
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: Colors.blueGrey,
          child: ListView(
            children: const [
              DrawerHeader(
                child: Text(
                  "Menu",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                  ),

                )
              )
            ],
          ),
        ),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green[400],
          unselectedItemColor: Colors.blueGrey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance_wallet
                ),
                label: "Wallet"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                ),
                label: "Profile")
          ],
          currentIndex: _currentIndex,
          onTap: onTappedItem,
        ),
      ),
    );
  }
}
