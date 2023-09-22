import 'package:flutter/material.dart';

class CustomerSetting extends StatelessWidget {
  const CustomerSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: const Text('Estamos en la Pagina de Configuraciones'),
            ),
          ),
      ),
    );
  }
}