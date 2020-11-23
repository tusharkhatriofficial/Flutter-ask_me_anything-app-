import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text('Ask me anything !',
            style: TextStyle(color: (Colors.white), fontFamily: ('Roboto'), fontSize: 25.0),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: homePage(),
      ),
    ),
  );
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int imageNumber = 5;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                 setState(() {
                   imageNumber = Random().nextInt(5);
                 });
              },
              child: Image(
                image: AssetImage('images/ball$imageNumber.gif'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

