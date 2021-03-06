import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:layout/favoriteWidget.dart';


Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                "Oeschinen Lake Campground",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
            Text(
              "Kandersteg, Switzerland",
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        )
        ),
        FavoriteWidget(),
        //const Text('41'),
    ],
  ),
);
