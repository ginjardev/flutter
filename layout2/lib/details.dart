import 'package:flutter/material.dart';

final myStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 18,
  height: 2,
);

final detailsRow = Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Column(
      children: [
        Icon(Icons.kitchen, color: Colors.green[500]),
        const Text('PREP:'),
        const Text('25 min'),
      ],
    ),
    Column(
      children: [
        Icon(Icons.timer, color: Colors.green[500]),
        const Text('COOK:'),
        const Text('1 hr'),
      ],
    ),
    Column(
      children: [
        Icon(Icons.restaurant, color: Colors.green[500]),
        const Text('FEEDS:'),
        const Text('4 - 6'),
      ],
    )
  ],
);
final deco = DefaultTextStyle.merge(
  style: myStyle,
  child: Container(
    padding: const EdgeInsets.all(20),
    child: detailsRow,
  ),
);
