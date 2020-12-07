import 'package:flutter/material.dart';

class Evacuacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text(
              '[Mapa referencial, muestra ubicacion del usuario]',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Solo si el usuario se encuentra en zona de peligro se mostrara una posible via de evacuacion.',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
