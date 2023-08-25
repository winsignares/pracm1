import 'package:flutter/material.dart';

class Hello_word extends StatelessWidget {
  const Hello_word({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 24.0,
      color: Colors.blue,
    );

    const CustomerNav = Row(                
                children: [
                  Text(
                    'Nombre del Usuario',
                    style: textStyle,
                  ),
                  Expanded(child: SizedBox()),
                  CircleAvatar(
                    backgroundColor: Colors.brown,
                    child: Text('W'),
                  )
                ],
              );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomerNav,
            ),
            
          ],
        ),
      ),
    );
  }
}
