import 'package:flutter/material.dart';
import 'package:ze04/stylet.dart';



class GContainer extends StatelessWidget{
  GContainer({super.key});

  Widget build(context){
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(78, 240, 134, 234),
            Color.fromARGB(31, 94, 194, 240)
          ],begin: Alignment.topRight, end:Alignment.bottomLeft)),
          child: const Center(
           child: StyleT()
        ));
  }
}