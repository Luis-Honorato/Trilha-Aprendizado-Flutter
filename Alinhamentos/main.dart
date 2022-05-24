import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Frases do dia',
    home: Container(
      margin: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
            Text("t1"),
            Text("t2"),
            Text("t3")
          ],
        ),
      ),
    )
  );
}