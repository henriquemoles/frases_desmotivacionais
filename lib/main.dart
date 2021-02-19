import 'package:flutter/material.dart';
import 'dart:math';
void main (){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,


  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "O não você já tem, agora só falta buscar a humilhação!",
    "Procrastinar é acreditar no potencial do seu eu do amanhã!",
    "É só uma fase ruim, logo vai piorar",
    "A vida te derruba hoje preparando para a queda de amanhã",
    "Lute como nunca. Perca como sempre",
    "Se alguém te ofendeu sem você merecer, volte lá e mereça!",
    "Nunca deixe ninguém dizer que você não consegue. Diga você mesmo: Eu não consigo!",
    "Seu limite é você mesmo!",
    "Nenhum obstáculo é grande para quem desiste",
    "só dará errado se você tentar",
    "O caminho é longo mas a derrota é certa",
    "Pare de desejar e começe a desistir",
    "Seja protagonista do seu fracasso",
    "Quando sua mente pensar em desistir. Desista!",
    "O recomeço é a oportunidade de um novo fracasso",
    "A vida é um conto de falhas",
    "Sem lutas não há derrotas",
    "Quando tudo estiver dando errado, se acostume",
    "Essa dor nas costas deve ser de carregar peso, de carregar o peso do fracasso!"
  ];
  var _fraseGerada = "Clique no botão para gerar uma frase!";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt( _frases.length );

    setState(() {
      _fraseGerada = _frases [ numeroSorteado ] ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    /*  appBar: AppBar(
        title: Text("Frases Desmotivacionais"),
        backgroundColor: Color.fromRGBO(59, 0, 0, 1),
      ),*/
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 16, 40, 16),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/App_fundo.png')
            ),
            //border: Border.all(width: 3,color: Colors.amber)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset("images/FRASES_MOTIVACIONAIS.png",
            height: 100,
            width: 300),
            Text(_fraseGerada,
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.white
              ),
            ),
            Text(""),
            SizedBox(
              width: 300,
              height: 75,
              child: RaisedButton(child: Text(""
                  "Nova Frase",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                ),
              ),
                color: Colors.white70,
                onPressed: _gerarFrase,),
            )

          ],
        )
      ),
    );
  }
}
