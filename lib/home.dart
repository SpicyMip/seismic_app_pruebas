import 'package:flutter/material.dart';
import 'registro.dart';
import 'evacuacion.dart';
import 'contactos2.dart';
import 'nosotros.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectItem = 0;
  var _nameAppBar = Text('Registro de sismos');
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Registro();
      case 1:
        return Evacuacion();
      case 2:
        return Contactos2();
      case 3:
        return null;
      case 4:
        return Nosotros();
    }
  }

  _onSelect(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectItem = pos;
    });
  }

  _getAppBar(int pos) {
    switch (pos) {
      case 0:
        _nameAppBar = Text('Registro de sismos');
        return _nameAppBar;
      case 1:
        _nameAppBar = Text('Vias de evacuación');
        return _nameAppBar;
      case 2:
        _nameAppBar = Text('Contactos de emergencia');
        return _nameAppBar;
      case 3:
        _nameAppBar = Text('Ajustes y Preferencias');
        return _nameAppBar;
      case 4:
        _nameAppBar = Text('Acerca de nosotros');
        return _nameAppBar;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _getAppBar(_selectItem),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: 'Ajustes',
            onPressed: () {
              _onSelect(3);
            },
          ),
        ],
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
                subtitle: Text('Para ver mas detalles del sismo solo pulselo'),
                leading: Icon(Icons.list),
                selected: (0 == _selectItem),
                onTap: () {
                  _onSelect(0);
                }),
            ListTile(
                title: Text('Vias de Evacuacion'),
                subtitle: Text(
                    'Aqui podra ver su via de evacuacion mas cercana en caso de estar en zona de tsunami'),
                leading: Icon(Icons.map),
                selected: (1 == _selectItem),
                onTap: () {
                  _onSelect(1);
                }),
            ListTile(
              title: Text('Contactos de Emergencia'),
              subtitle: Text(
                  'Para realizar una llamada de emergencia solo pulse el destinatario'),
              leading: Icon(Icons.call),
              selected: (2 == _selectItem),
              onTap: () {
                _onSelect(2);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Acerca de nosotros'),
              leading: Icon(Icons.account_circle),
              selected: (4 == _selectItem),
              onTap: () {
                _onSelect(4);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectItem),
    );
  }
}
