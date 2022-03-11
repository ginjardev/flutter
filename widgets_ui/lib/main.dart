import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  int _selectedIndex = 0;

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            bottom: TabBar(controller: _tabController, tabs: const [
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ]),
          ),
          drawer: Drawer(
            child: ListView(
              children: const [
                SizedBox(
                  height: 80,
                  child: DrawerHeader(
                  child: Text(
                    "Menu",
                    style: TextStyle(
                      fontSize: 32
                    ),
                    textAlign: TextAlign.left,
                    ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle
                  ),
                ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.notifications
                  ),
                  title: Text("Notifications"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.message
                  ),
                  title: Text("Messages"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.person_sharp
                  ),
                  title: Text("Profile"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings
                  ),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout
                  ),
                  title: Text("Logout"),
                ),
                // Divider(
                //   thickness: 2,
                //   color: Colors.black,
                // )
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              const Center(
                child: Text("It's cloudy here"),
              ),
              const Center(
                child: Text("It's rainy here"),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("It's sunny here"),
                    FlutterLogo(),
                    Icon(Icons.sentiment_very_satisfied_rounded)
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_sharp), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "Alarm"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bluetooth_audio_outlined), label: "bluetooth")
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
      ),
    );
  }
}
