import 'package:flutter/material.dart';

class CustomerSetting extends StatefulWidget {
  const CustomerSetting({super.key});
  static const String nombre = 'Configuracion';

  @override
  State<CustomerSetting> createState() => _CustomerSettingState();
}

class _CustomerSettingState extends State<CustomerSetting> {
  bool _colorsecundario = false;
  int _sexo = 1;
  String _nombre = "William";

  _setSelectedRadio( int valor){
    _sexo = valor;
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: const Text(
                'Configuración',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(),
            SwitchListTile(
                value: _colorsecundario,
                title: const Text('Color Secundario'),
                onChanged: (value) {
                  setState(() {
                    _colorsecundario = value;
                  });
                }),
            const Divider(),
            RadioListTile(
                value: 1,
                title: const Text('Masculino'),
                groupValue: _sexo,
                onChanged: (value) {
                  _setSelectedRadio(value as  int);
                }),
            RadioListTile(
                value: 2,
                title: const Text('Femenino'),
                groupValue: _sexo,
                onChanged: (value) {
 _setSelectedRadio(value as  int);
                }),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'escriba el nombre del Usuario',
                ),
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
