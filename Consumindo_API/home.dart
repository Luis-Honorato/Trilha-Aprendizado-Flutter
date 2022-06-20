import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController cepControler = TextEditingController();

  String cep = '';
  String _resultado = '';

  _buscarCep() async {
    cep = cepControler.text;
    var url = Uri.parse('https://viacep.com.br/ws/${cep}/json/');
    http.Response response;
    
    response = await http.get(url);

    Map <String, dynamic> resposta = jsonDecode(response.body);
    String logradouro = resposta['logradouro'];
    String bairro = resposta['bairro'];
    String localidade = resposta['localidade'];

    

    setState(() {
      _resultado = 'Rua: $logradouro, Bairro: $bairro, Cidade: $localidade';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumo de Serviço Web'),
      ),

      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [

            biuldCampoCep(),

            biuldBotao(),

            resultadoCep(),
          ],
        ),
      ),
    );
  }

  Widget biuldCampoCep() => TextField(
    keyboardType: TextInputType.number,
    decoration: const InputDecoration(
      label: Text('Digite seu CEP sem pontos e traços')
    ),
    controller: cepControler,
  );

  Widget biuldBotao() => ElevatedButton(
    onPressed: _buscarCep, 
    child: const Text('Clique em mim!')
    );

    Widget resultadoCep() => Text(_resultado);
}