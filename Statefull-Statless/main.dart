import 'package:flutter/material.dart';

// Statefull é alteravel, mais parecido com uma váriável
// Stateless é inalterável, mais parecido com uma constante

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful()

  )
  );
}

class HomeStateful extends StatefulWidget {
  const HomeStateful({ Key? key }) : super(key: key);

  @override
  State<HomeStateful> createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {

  var _texto = "Luís Honorato";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text( 
          "Título do meu App"
          ),
          backgroundColor: Colors.grey,
      ),

      body: Container(
        child: Column(
          children: <Widget> [
            Padding(padding: EdgeInsets.all(16)),
            RaisedButton(
              color: Colors.brown,
              onPressed: () {
                setState(() {
                  _texto = "Seja muito Bem-Vindo! Eu estou aprendo Sobre alterações de Widgets!";
                });
              },
              child: Text(
                "Clique em mim"
               ),
              ),
            Text(
              "Olá: $_texto"
            )
          ],
        ),
      ),

    );
  }
}

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var _titulo = "Título do meu App";

    return Scaffold(

      appBar: AppBar(
        title: Text( 
          _titulo
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
        color: Color(0xff1C1C1C),
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

    );
  }
}