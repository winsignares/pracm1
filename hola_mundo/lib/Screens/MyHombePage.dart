import 'package:flutter/material.dart';

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Center(child: Container(child: const Text('Estamos en la Pagina de My Home Page'),))));
  }
}