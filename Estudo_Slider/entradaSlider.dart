import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({ Key? key }) : super(key: key);

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double valor = 5;
  String label = '5';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: <Widget> [
       
           Slider(
             value: valor, 
             min: 1,
             max: 10,
             label: label,
             divisions: 10,
             onChanged: (double novoValor){
               setState(() {
                 valor = novoValor;
                 label = novoValor.toString();
               });
             }
            ),

            ElevatedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20
                ),
                
              ),
              onPressed: () {}
            )
            
          ],
        ),
      ),
    );
  }
}