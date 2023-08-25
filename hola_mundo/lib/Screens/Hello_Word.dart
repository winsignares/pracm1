import 'package:flutter/material.dart';

class Hello_word extends StatelessWidget {
  const Hello_word({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child:  Column(
        children: [
          Row(
            children: [
              Text('Nombre del Usuario', style: TextStyle( fontSize: 24.0, color: Colors.blue,),),
              SizedBox(width: 50,0)
            ],
          )
        ],
      ),),
    );
  }
}