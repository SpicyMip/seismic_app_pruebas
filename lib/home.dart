import 'package:flutter/material.dart';
import 'registro.dart';
import 'evacuacion.dart';
import 'contactos.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectItem = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Registro();
      case 1:
        return Evacuacion();
      case 2:
        return Contactos();
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
                onTap: () {
                  _onSelect(0);
                }),
            ListTile(
                title: Text('Vias de Evacuacion'),
                leading: Icon(Icons.map),
                onTap: () {
                  _onSelect(1);
                }),
            ListTile(
              title: Text('Contactos de Emergencia'),
              leading: Icon(Icons.local_hospital),
              onTap: () {
                _onSelect(2);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectItem),
    );
  }
}
