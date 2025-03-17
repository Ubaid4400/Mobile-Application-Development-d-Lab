import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(Myapp());

}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  String filename='assets/images/dice_1.png';
  void randomdice()
  {
    int random=Random().nextInt(5)+1;
    if (random==1)
    {
      filename='assets/images/dice_1.png';
    }
    else if (random==2)
    {
      filename='assets/images/dice_2.png';
    }
    if (random==3)
    {
      filename='assets/images/dice_3.png';
    }
    setState((){
      filename;
    });

  }
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LUDO',
      home:Scaffold(
        appBar: AppBar(title: Text('LUDO'),
        centerTitle: true,
        ),
        body:Column(
          children: [
            Image.asset(filename,height:80,),
            ElevatedButton(onPressed: randomdice, child: Text('Roll Dice'))
          ],
        )
      )
    );
  }
}