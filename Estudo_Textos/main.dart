import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Frases do dia',
    home: Container(color: Colors.white,
    child: Column(
      children: <Widget> [
        Text(
          "Lorem ipsum",
          style: TextStyle(
            fontSize: 35,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            letterSpacing: 0,
            wordSpacing: 0,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.greenAccent,
            color: Colors.black
          ),
        )
      ],
    ),),
  ));
}