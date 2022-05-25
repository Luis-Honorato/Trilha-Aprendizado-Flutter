import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(

      appBar: AppBar(
        title: Text(
          "Título do meu App"
          ),
          backgroundColor: Colors.grey,
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: <Widget> [
            Text("Parte principal do APP"),
          ],
        ), 
      ),

      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(28,28,28, 1),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Text(
                "Essa é a App Bar",
                style: TextStyle(
                  color: Colors.white,
                ),
                )
            ],
          ),
        ),
      ),

    ),
  )
  );
}