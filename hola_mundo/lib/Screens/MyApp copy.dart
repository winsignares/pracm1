import 'package:flutter/material.dart';
import 'package:hola_mundo/Screens/CustomerSetting.dart';
import 'package:hola_mundo/Screens/Hello_Word.dart';
import 'package:hola_mundo/Screens/Home_Page.dart';

import 'MyHombePage.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CustomerSetting() //const MyHomePage(title: 'Flutter Movil 1'),
    );
  }
}
