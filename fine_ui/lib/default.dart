import 'dart:math';

import 'package:flutter/material.dart';

class Frame extends StatefulWidget {
  const Frame({Key? key}) : super(key: key);

  @override
  State<Frame> createState() => _FrameState();
}

class _FrameState extends State<Frame> with TickerProviderStateMixin {

  late TabController _tabcontroller;

  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              controller: _tabcontroller,
              tabs: const [
                Tab(icon: Icon(Icons.call_made), child: Text("Outgoing")),
                Tab(icon: Icon(Icons.call_received), child: Text("Received")),
                Tab(icon: Icon(Icons.call_missed), child: Text("Missed"))
              ]),
        ),
        body: TabBarView(
          controller: _tabcontroller,
          children: [
            ListView.builder(itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.account_circle,
                  ),
                  title: Text(
                    'Caller $index',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                  subtitle: const Text(
                    "vodafone GH",
                  ),
                  trailing: const Icon(
                    Icons.call,
                  ),
                  tileColor: Colors.lightBlue[100],
                ),
              );
            }),
            ListView.builder(itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.account_circle,
                  ),
                  title: Text(
                    'Caller $index',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                  subtitle: const Text(
                    "vodafone GH",
                  ),
                  trailing: const Icon(
                    Icons.call_received
                  ),
                  tileColor: Colors.green[200],
                ),
              );
            }),
            ListView.builder(itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.account_circle,
                  ),
                  title: Text(
                    'Caller $index',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                  subtitle: const Text(
                    "vodafone GH",
                  ),
                  trailing: const Icon(
                    Icons.call_missed
                  ),
                  tileColor: Colors.red[200],
                ),
              );
            })
          ],
        ));
  }
}
