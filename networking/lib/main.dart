import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:networking/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  void initState() {
    fetchUser();
    super.initState();
  }

  late User user;
  List<User> userList = [];

  fetchUser() async {
    String address = 'https://jsonplaceholder.typicode.com/users/';
    Uri addressUri = Uri.parse(address);
    var response = await http.get(addressUri);

    if (response.statusCode == 200) {
      var responseObj = jsonDecode(response.body);

      responseObj.forEach((userItem) {
        user = User(userItem['id'], userItem['name'],
            userItem['company']['catchPhrase']);
        userList.add(user);
      });
      // user = User(responseObj['id'], responseObj['name'],
      //     responseObj['company']['catchPhrase']);
    } else {
      throw Exception('Failed to load user');
    }

    setState(() {});
  }

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
                    color: Colors.white60),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            child: UserProfilesWidget(
              list: userList,
              title: user.name,
              subtitle: user.catchPhrase,
            ),
          ),
        ],
      )),
    );
  }
}

class UserProfilesWidget extends StatelessWidget {
  const UserProfilesWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.list,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final List<User> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext buildContext, pos) {
        return PersonCardWidget(
          title: list[pos].name,
          subtitle: list[pos].catchPhrase,
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
