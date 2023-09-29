import 'package:flutter/material.dart';
import 'package:hola_mundo/localstorage/Sharepreference.dart';

import '../Widgets/CustomerDrawer.dart';

class MyHomePage2 extends StatelessWidget {
  MyHomePage2({super.key});
  static const String nombre = 'Home';
  final prefs = PrefernciaUsuario();
  @override
  Widget build(BuildContext context) {
    prefs.ultimapagina = MyHomePage2.nombre;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Principal",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: prefs.colosecundario ? Colors.blue : Colors.red,
      ),
      drawer: const CustmerDrawer(),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Color: ${prefs.colosecundario}'),
               const Divider(),
                Text('Sexo: ${prefs.sexo}'),
                const Divider(),
                Text('Nombre : ${prefs.nombre}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
