import 'package:flutter/material.dart';

class Contactos2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Card(
                color: Colors.amber,
                margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 25.0,
                ),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'images/ambulancia.jpg',
                    ),
                    ListTile(
                      title: Text(
                        'Urgencia medica',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      subtitle: Text('131'),
                      onTap: () {},
                    )
                  ],
                )),
            Card(
                color: Colors.greenAccent,
                margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 25.0,
                ),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'images/carabineros.jpg',
                    ),
                    ListTile(
                      title: Text(
                        "Carabineros",
                        style: TextStyle(fontSize: 18.0),
                      ),
                      subtitle: Text("133"),
                      onTap: () {
                        return null;
                      },
                    )
                  ],
                )),
            Card(
                color: Colors.redAccent,
                margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 25.0,
                ),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'images/bomberos.jpg',
                    ),
                    ListTile(
                      title: Text(
                        "Bomberos",
                        style: TextStyle(fontSize: 18.0),
                      ),
                      subtitle: Text('132'),
                      onTap: () {
                        return null;
                      },
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
