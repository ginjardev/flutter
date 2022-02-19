import 'package:flutter/material.dart';

Widget titleText =  Container(
  
  child:  Column(
    children: [
       SizedBox(
         //width: 200,
         child: Text(
          "Strawberry Pavlova",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
             ),
       ),
      SizedBox(
        //width: 400,
        child: Text(
          """
          Pavlova is a meringue-based dessert named 
          after the Russian ballerina Anna Pavlova. 
          It has a crisp crust and soft, light inside, 
          usually topped with fruit and whipped cream.
          """,
          softWrap: true,
        ),
      ),
    ],
  ),
);
