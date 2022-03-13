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
              SizedBox(
                height: 85,
                child: DrawerHeader(
                  child: Text(
                    "Menu",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                    ),
                  )
                ),
              ),
              ListTile(
                leading: Icon(
                  color: Colors.black,
                  Icons.notifications

                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  color: Colors.black,
                  Icons.inbox
                ),
                title: Text(
                  "Inbox",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  color: Colors.black,
                  Icons.settings
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  color: Colors.black,
                  Icons.logout
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.green[400],
          unselectedItemColor: Colors.grey[50],
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
