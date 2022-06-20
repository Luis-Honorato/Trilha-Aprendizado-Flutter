import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];

  void _carregarItens(){
    for(int i = 0; i <= 10 ; i++){
      Map<String,dynamic> item = {};

      item['titulo'] = 'Título $i Lorem ipsun dolor sit amae';
      item['subtitulo'] = 'Subtítulo $i lorem opsun dolor sit amae'; 
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {

    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas'),
      ),

      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice){
            return ListTile(
              title: Text(_itens[indice]['titulo']),
              subtitle: Text(_itens[indice]['subtitulo']),
            );
          }
        ) ,
      ),
    );
  }
}