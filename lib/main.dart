import 'package:flutter/material.dart';

//stateless -> widgets que nao podem ser alterados
//stateful -> widgets que podem ser alterados
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Series de natal",

    ///home: Container(color: Colors.white,),
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Series"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text("conteudo"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [Text("Home"), Text("Post"), Text("Email")],
            )),
      ),
    );
  }
}
