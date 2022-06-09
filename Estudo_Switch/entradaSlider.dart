import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({ Key? key }) : super(key: key);

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget> [

            SwitchListTile(
              value: _escolhaUsuario, 
              onChanged: (bool valor){
                setState(() {
                  _escolhaUsuario = valor;
                });
              },
              title: Text('Receber Notificações?'),
              activeColor: Colors.red,
              secondary: Icon(Icons.add_alert),
            ),

            
          ],
        ),
      ),
    );
  }
}