import 'package:flutter/material.dart';

class Contactos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Card(
                margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(Icons.local_hospital),
                  title: Text(
                    "Urgencia medica",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  subtitle: Text("131"),
                  onTap: () {
                    return null;
                  },
                )),
            Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  title: Text(
                    "Carabineros",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  subtitle: Text("133"),
                  onTap: () {
                    return null;
                  },
                )),
            Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  title: Text(
                    "Bomberos: 132",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  subtitle: Text('132'),
                  onTap: () {
                    return null;
                  },
                )),
          ],
        ),
      ),
    );
  }
}
