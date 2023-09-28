import 'package:flutter/material.dart';

import '../Screens/CustomerSetting.dart';
import '../Screens/MyHombePage.dart';

class CustmerDrawer extends StatelessWidget {
  const CustmerDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/ul.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.red,
              size: 30.0,
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, MyHomePage2.nombre);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.red,
              size: 30.0,
            ),
            title: const Text('Configuración'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, CustomerSetting.nombre);
            },
          ),
        ],
      ),
    );
  }
}
