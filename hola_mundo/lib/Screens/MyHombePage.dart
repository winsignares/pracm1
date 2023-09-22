import 'package:flutter/material.dart';

import '../Widgets/CustomerDrawer.dart';

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({super.key});
  static const String nombre = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Principal",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: const CustmerDrawer(),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Color: '),
                Divider(),
                Text('Sexo: '),
                Divider(),
                Text('Nombre : '),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
