import 'package:flutter/material.dart';
import 'package:seismic_app/Temblores.dart';
import 'db.dart';

class Registro extends StatelessWidget {
  //Linea importante
  final Database data = Database();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            //linea importante
            future: data.getTemblores(),
            //
            builder: (BuildContext context,
                AsyncSnapshot<List<Temblores>> snapshot) {
              if (snapshot.hasData) {
                List<Temblores> temblores = snapshot.data;
                print(temblores);

                return ListView(
                  children: temblores
                      .map((Temblores temblores) => Card(
                              child: ListTile(
                            title: Text(temblores.fecha),
                            subtitle: Text(temblores.magnitud),
                          )))
                      .toList(),
                );
              }
              return Center(child: CircularProgressIndicator());
            }));
  }
}
