import 'package:flutter/material.dart';
import 'package:hola_mundo/localstorage/Sharepreference.dart';

import '../Widgets/CustomerDrawer.dart';

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
  late TextEditingController _textEditingController;
  final prefs = PrefernciaUsuario();

  _setSelectedRadio(int valor) {
    _sexo = valor;
    prefs.sexo = valor;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    prefs.ultimapagina = CustomerSetting.nombre;
     _colorsecundario = prefs.colosecundario;
    _textEditingController = TextEditingController(
      text: prefs.nombre
    );
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
       drawer: const CustmerDrawer(),
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
                    prefs.colosecundario = value;
                  });
                }),
            const Divider(),
            RadioListTile(
                value: 1,
                title: const Text('Masculino'),
                groupValue: _sexo,
                onChanged: (value) {
                  _setSelectedRadio(value as int);
                }),
            RadioListTile(
                value: 2,
                title: const Text('Femenino'),
                groupValue: _sexo,
                onChanged: (value) {
                  _setSelectedRadio(value as int);
                }),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'escriba el nombre del Usuario',
                ),
                onChanged: (value) {
                  _nombre = value;
                  prefs.nombre = value;
                  print(_nombre);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
