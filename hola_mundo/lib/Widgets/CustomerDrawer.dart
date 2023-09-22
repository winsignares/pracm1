import 'package:flutter/material.dart';

class CustmerDrawer extends StatelessWidget {
  const CustmerDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Container(
             decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ul.png'),
                fit: BoxFit.fill,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
