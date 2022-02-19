import 'package:flutter/material.dart';
import 'package:layout/buttonColumn.dart';
import 'package:layout/home.dart';

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    buttonColumn(Colors.blue.shade400, Icons.call, "CALL"),
    buttonColumn(Colors.blue.shade400, Icons.near_me, "ROUTE"),
    buttonColumn(Colors.blue.shade400, Icons.share, "SHARE"),
  ],
);
