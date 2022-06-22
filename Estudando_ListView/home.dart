import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List _itens = [];

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
              onTap: () {
                showDialog(
                  context: context, 
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Título Alert Dialog ${indice}'),
                      content: Text('Conteudo do Dialog'),
                      titlePadding: EdgeInsets.all(15),
                      titleTextStyle: TextStyle(color: Colors.green, fontSize: 20,),
                      contentPadding: EdgeInsets.all(30),
                      actions: [
                        OutlinedButton(onPressed: () {Navigator.pop(context);}, child: Text('Não')),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          }, 
                          child: Text('Sim')
                        ),
                      ],
                      actionsPadding: EdgeInsets.only(right: 16),
                    );
                  }
                );
              },
            );
          }
        ) ,
      ),
    );
  }
}