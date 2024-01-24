import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ze04/stylet.dart';
import 'dart:math';


class DiceThrown extends StatefulWidget{
  const DiceThrown({super.key});

  State<DiceThrown> createState(){
      return DiceThrownAction(); 
  }
}

class DiceThrownAction extends State<DiceThrown>{

  var dicechange = "/images/dice-5.png";
  final randoms = Random();
  var number = 1;

  Widget build(context){
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(dicechange,width: 200,
                ),
                const SizedBox(
                    height: 20,
                ),
                TextButton(
                  onPressed:() {
                    setState((){
                      number = randoms.nextInt(6) + 1;
                      dicechange = "/images/dice-$number.png";
                    });
                  },
                  child: StyleT("Roll Dice"),
                )
              ],
    );
  }

}