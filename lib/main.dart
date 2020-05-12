import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Askapp());

class Askapp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        title: Center(
          child: Text("Ask Me Anything",
          style: TextStyle(
            fontFamily: 'Schyler',
            fontSize: 30,
          ),
        ),
        ),
      ),
        body: Ball(),
      )
    );
  }
}

//Now we talk about such things which change state in current page

class Ball extends StatefulWidget{
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  int ball=1;
  void ballchange(){
    setState(() {
     ball=Random().nextInt(5)+1;
    });
  }
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          ballchange();
        },
      child: Image.asset('images/ball$ball.png'),
      )
    );
  }
}