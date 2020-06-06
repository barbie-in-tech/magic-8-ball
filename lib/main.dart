import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xffbdd4fc),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        backgroundColor: Color(0xff456aad),
      ),
          body: Ball(),
    ));
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int num=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed:(){
            setState(() {

              num = Random().nextInt(5)+1;
            });
          },
          child: Image(
              image: AssetImage('images/ball$num.png'),
      ),
        ),),
    );
  }
}
