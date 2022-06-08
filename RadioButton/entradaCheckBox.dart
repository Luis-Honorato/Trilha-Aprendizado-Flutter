import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  const EntradaCheckBox({ Key? key }) : super(key: key);

  @override
  State<EntradaCheckBox> createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {

  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget> [

            CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("A melhor comida do mundo!"),
              activeColor: Colors.black,
              secondary: Icon(Icons.add_box),
              value: _comidaBrasileira, 
              onChanged: (bool? valor){
                setState(() {
                  _comidaBrasileira = valor!;
                });
              }
            ),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("É muito apimentada!"),
              activeColor: Colors.black,
              secondary: Icon(Icons.add_box),
              value: _comidaMexicana, 
              onChanged: (bool? valor){
                setState(() {
                  _comidaMexicana = valor!;
                });
              }
            ),
            RaisedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20
                ),
                
              ),
              onPressed: () {
                print("Comida Brasileira: ${_comidaBrasileira.toString()}" +
                " Comida Mexicana: ${_comidaMexicana.toString()}");
              }
            )

            /*
            Text("Comida Brasileira"),
            Checkbox(
              value: _valor,
              onChanged: (bool? valor) {
                setState(() {
                  _valor = valor!;
                });
              })
              */
          ],
        ),
      ),
    );
  }
}