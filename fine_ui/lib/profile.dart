import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.account_circle_rounded,
            size: 50,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("This is the profile page"),
          )
        ],
        )
      ),
    );
  }
}