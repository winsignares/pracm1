import 'package:flutter/material.dart';
import 'package:hola_mundo/Screens/MyApp.dart';
import 'package:hola_mundo/localstorage/Sharepreference.dart';


void main() async {
  
  final prefs = PrefernciaUsuario();
  await prefs.initPrefs();

  runApp(const MyApp());
}


