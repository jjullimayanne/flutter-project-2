import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Friends: Temporada 2: Episódio 9",
    "Friends: Temporada 3: Episódio 10",
    "Friends: Temporada 4: Episódio 10",
    "Friends: Temporada 5: Episódio 10",
    "Friends: Temporada 6: Episódio 10",
    "Friends: Temporada 7: Episódio 10",
    "Friends: Temporada 8: Episódio 11",
    "Friends: Temporada 9: Episódio 10",
    
  ];
  var _fraseGerada = "Clique abaixo para um ep especial de natal";
  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
   
    setState(() {
       _fraseGerada = _frases [ numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Episódios de natal"),
          backgroundColor: Colors.red.shade900,
        ),
        body: Center(
          child: Container(
            // width: double.infinity,
            padding: EdgeInsets.all(16),
            // decoration:
            //  BoxDecoration(border: Border.all(width: 3, color: Colors.black)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/image1.jpg"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                RaisedButton(
                    child: Text(
                      "New",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Colors.red.shade900,
                    onPressed: _gerarFrase),
              ],
            ),
          ),
        ));
  }
}
