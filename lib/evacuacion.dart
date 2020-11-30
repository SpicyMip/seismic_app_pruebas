import 'package:flutter/material.dart';

class Evacuacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return Center(child: Text('Vias de Evacuacion'));
=======
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image.asset('images/mapa.jpg'),
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
>>>>>>> Stashed changes
  }
}
