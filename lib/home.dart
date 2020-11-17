import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
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
                onTap: () {}),
            ListTile(
              title: Text('Contactos de Emergencia'),
              leading: Icon(Icons.local_hospital),
              onTap: () {},
            ),
            ListTile(
                title: Text('Vias de Evacuacion'),
                leading: Icon(Icons.map),
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
