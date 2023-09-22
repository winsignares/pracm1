import 'package:flutter/material.dart';

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({super.key});
  static final String nombre = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
                          "Principal", 
                      style: TextStyle(
                                color: Colors.white
                            ),
                      ),
        backgroundColor: Colors.blue,
      ),
      body:SafeArea(
        child: Center(
                child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),                  
                        child:const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Color: '),
                            const Divider(),
                             const Text('Sexo: '),
                            const Divider(),
                            const Text('Nombre : '),

                          ],
                        ),
                      ),
              ),
        ),
    );
  }
}