import 'package:flutter/material.dart';
import 'package:seismic_app/Temblores.dart';

import 'package:seismic_app/http_service.dart';

class Registro extends StatelessWidget {
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
                              child: ListTile(
                            title: Text(temblores.refGeografica),
                            subtitle: Text(temblores.magnitud),
                          )))
                      .toList(),
                );
              }
              return Center(child: CircularProgressIndicator());
            }));
  }
}
