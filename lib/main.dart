import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('DICEE'),
          backgroundColor: Colors.blueGrey,
        ),
        body: DicePage(),
      ),
    )
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 1, right = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: (){
                  setState(() {
                    left = 1+Random().nextInt(6);
                    right = 1+Random().nextInt(6);
                  });
                  print('Button 1 is pressed');
                },
                child: Image.asset('Images/d$right.png')),
          )),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: (){
                  setState(() {
                    left = 1+Random().nextInt(6);
                    right = 1+Random().nextInt(6);
                  });
                },
                child: Image.asset('Images/d$left.png')),
          )),
        ],
      ),
    );
  }
}
