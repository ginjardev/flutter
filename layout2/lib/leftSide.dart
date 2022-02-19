import 'package:flutter/material.dart';
import 'package:layout2/details.dart';
import 'package:layout2/rating.dart';
import 'package:layout2/title.dart';

final leftSide = Container(
  padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
  child: Column(
    children: [
      titleText,
      rating,
      detailsRow
    ],
  ),
);
