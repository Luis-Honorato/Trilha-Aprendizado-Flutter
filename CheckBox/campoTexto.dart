import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({ Key? key }) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget> [
            Padding(
              padding: EdgeInsets.all(32),
              child: TextField(
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  labelText: "Digite um valor",
                ),

                style: TextStyle(
                  fontSize: 25,
                ),
                
                controller: _textEditingController,

              ),
            ),

            RaisedButton(
              child: Text("Salvar"),
              color: Colors.lightGreen,
              onPressed: () {
                print("Você digitou " + _textEditingController.text);
              },
            ),

          ],
        ),
      ),
    );
  }
}