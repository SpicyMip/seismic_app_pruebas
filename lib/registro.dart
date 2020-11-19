import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  title: Text(
                    "Ciudad Ejemplo",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  subtitle: Text("Magnitud: V"),
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
                    "Ciudad Ejemplo 2",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  subtitle: Text("Magnitud: W"),
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
                    "Ciudad ejemplo 3",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  subtitle: Text("Magintud: X"),
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
                    "Ciudad Ejemplo 4",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  subtitle: Text("Magnitud: Y"),
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
                    "Ciudad Ejemplo 5",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  subtitle: Text("Magnitud: Z"),
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
