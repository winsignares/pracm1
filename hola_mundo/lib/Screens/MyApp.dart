import 'package:flutter/material.dart';
import 'package:hola_mundo/Screens/CustomerSetting.dart';
import 'package:hola_mundo/Screens/MyHombePage.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      initialRoute: CustomerSetting.nombre,
      routes: {
         MyHomePage2.nombre:(context) => MyHomePage2(),
         CustomerSetting.nombre:(context) => CustomerSetting(),
      },
      //home: CustomerSetting() //const MyHomePage(title: 'Flutter Movil 1'),
    );
  }
}
