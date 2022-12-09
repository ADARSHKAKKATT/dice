import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Dice());
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
 int leftDice=1;
 int rightdice=1;
 void dice(){
   leftDice=Random().nextInt(6)+1;
   rightdice=Random().nextInt(6)+1;
 }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Dice Game",
          ),
          centerTitle: true,
        ),
        body:Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: ()
              {
                setState((){
                  dice();
                  // print(leftDice);
                });
              },
                child: Image.asset("img/d$leftDice.jpg",
                  width: 250,
                height: 250,),
              ),
              SizedBox(width: 10,),
              TextButton(onPressed: ()
              {
                setState(() {
                  dice();
                });
              },
                child: Image.asset("img/d$rightdice.png",
                width: 250,
                height: 220,),
              )
            ],
          ),
        ),
      ),
    );
  }
}

