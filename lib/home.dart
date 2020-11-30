import 'package:flutter/material.dart';
import 'Ajustes.dart';
import 'registro.dart';
import 'evacuacion.dart';
<<<<<<< Updated upstream
import 'contactos.dart';
=======
import 'contactos2.dart';
import 'nosotros.dart';
import 'lol.dart';
>>>>>>> Stashed changes

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectItem = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Registro2();
      case 1:
        return Evacuacion();
      case 2:
<<<<<<< Updated upstream
        return Contactos();
=======
        return Contactos2();
      case 3:
        return Ajustes();
      case 4:
        return Nosotros();
>>>>>>> Stashed changes
    }
  }

  _onSelect(int pos) {
    setState(() {
      _selectItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seismic App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/sismos_3.jpg'),
                fit: BoxFit.fill,
              )),
              child: Text(
                'Seismic App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
                title: Text('Registro de sismos'),
                leading: Icon(Icons.list),
                selected: (0 == _selectItem),
                onTap: () {
                  _onSelect(0);
                }),
            ListTile(
                title: Text('Vias de Evacuacion'),
                leading: Icon(Icons.map),
                selected: (1 == _selectItem),
                onTap: () {
                  _onSelect(1);
                }),
            ListTile(
              title: Text('Contactos de Emergencia'),
<<<<<<< Updated upstream
              leading: Icon(Icons.local_hospital),
=======
              subtitle: Text(
                  'Para realizar una llamada de emergencia solo pulse el destinatario'),
              leading: Icon(Icons.call),
              selected: (2 == _selectItem),
>>>>>>> Stashed changes
              onTap: () {
                _onSelect(2);
              },
            ),
<<<<<<< Updated upstream
=======
            Divider(),
            ListTile(
              title: Text('Acerca de nosotros'),
              leading: Icon(Icons.account_circle),
              selected: (4 == _selectItem),
              onTap: () {
                _onSelect(4);
              },
            ),
>>>>>>> Stashed changes
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectItem),
    );
  }
}
