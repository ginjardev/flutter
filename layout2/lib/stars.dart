import 'package:flutter/material.dart';

Widget stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(
      Icons.star,
      color: Colors.green.shade500,
    ),
    Icon(
      Icons.star,
      color: Colors.green.shade500,
    ),
    Icon(
      Icons.star,
      color: Colors.green.shade500,
    ),
    const Icon(
      Icons.star,
      color: Colors.black,
    ),
    const Icon(
      Icons.star,
      color: Colors.black,
    ),
  ],
);


