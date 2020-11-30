import 'package:flutter/material.dart';

class Nosotros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                'Quienes somos',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              title: Text(
                  'AZP Grop es un grupo de estudiantes de primer año de Ingenieria Civil Informatica, Seismic app nace de la necesidad de hacer un proyecto innovador para el ramo de introduccion a la ingenieria civil informatica.'),
            ),
            ListTile(
              title: Text(
                  'El grupo esta compuesto por Jose Zapata, Felipe Aedo y Martin Pino.'),
            ),
            ListTile(
              title: Text(
                  'Contacto:                         jose.zapata@sansano.usm.cl  felipe.aedos@sansano.usm.cl  martin.pino@sansano.usm.cl'),
            )
          ],
        ),
      ),
    );
  }
}
