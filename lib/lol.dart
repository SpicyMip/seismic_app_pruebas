import 'package:flutter/material.dart';
import 'package:seismic_app/Temblores.dart';
import 'package:seismic_app/http_service.dart';

class Registro2 extends StatelessWidget {
  final HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: httpService.getPosts(),
            builder: (BuildContext context,
                AsyncSnapshot<List<Temblores>> snapshot) {
              if (snapshot.hasData) {
                List<Temblores> temblores = snapshot.data;
                return ListView(
                  children: temblores
                      .map((Temblores temblores) => Card(
                              child: Column(
                            children: <Widget>[
                              Text('Referencia: ' + temblores.refGeografica),
                              Text('Magnitud: ' + temblores.magnitud),
                              Text(
                                  'Fecha: ' + temblores.fecha.substring(0, 10)),
                              Text('Hora: ' +
                                  temblores.fecha.substring(
                                    11,
                                  ) +
                                  ' Hrs.'),
                              Text('Profundidad: ' +
                                  temblores.profundidad +
                                  ' Km')
                            ],
                          )))
                      .toList(),
                );
              }
              return Center(child: CircularProgressIndicator());
            }));
  }
}
