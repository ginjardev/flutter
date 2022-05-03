import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Colors.blueGrey,
              elevation: 6,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  "User Profiles",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white60
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
            height: MediaQuery.of(context).size.height,
            child: const UserProfilesWidget(),
        ),
          ],
        )
      ),
    );
  }
}

class UserProfilesWidget extends StatelessWidget {
  const UserProfilesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 17,
      itemBuilder: (BuildContext buildContext, pos) {
        return const PersonCardWidget(
          title: "John Doe",
          subtitle: "Software Engineer and System Architect",
        );
      },
    );
  }
}

class PersonCardWidget extends StatelessWidget {
  const PersonCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal,
      elevation: 2,
      child: ListTile(
        leading: const Icon(Icons.account_circle_rounded),
        trailing: const Icon(Icons.add),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
