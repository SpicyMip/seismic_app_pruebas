import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return Center(child: Text('Registros de sismos'));
=======
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
                            onTap: () {},
                          )))
                      .toList(),
                );
              }
              return Center(child: CircularProgressIndicator());
            }));
>>>>>>> Stashed changes
  }
}
