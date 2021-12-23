import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Series",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Series"),
          backgroundColor: Colors.green,
        ),
        body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Image.asset(
            "images/image2.jpg",  
          ),
          RaisedButton(onPressed: ( ) {

          },
          child: Text("Next"),
          color: Colors.green,
          
          
          ),

        ],),
        ),
      ),
    ),
  );
}
