import 'package:flutter/material.dart';

class CustomerSetting extends StatelessWidget {
  const CustomerSetting({super.key});
 static final String nombre = 'Configuracion';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings', 
                          style: TextStyle( 
                                    color: Colors.white, 
                                    fontSize: 18.0
                                  ), 
                      ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child:ListView(
          children: [
            Container(
              child: const Text('Configuración', style: TextStyle( fontSize: 30.0, fontWeight: FontWeight.bold),),
            ),
            const Divider(),
            SwitchListTile(
              value: true, 
              title: const Text('Color Secundario'),
              onChanged: (value){
                print(value);
              }
            ),
            const Divider(),
            RadioListTile(
              value: 1, 
              title: const Text('Masculino'),
              groupValue: 1, 
              onChanged: (value){

              }
            ),
            RadioListTile(
              value: 2, 
              title: const Text('Femenino'),
              groupValue: 1, 
              onChanged: (value){

              }
            ),
            const Divider(),
             Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'escriba el nombre del Usuario',
                ),
                onChanged: (value){
             
                },
                         ),
             ),
          ],
        ),
      ),
    );
  }
}