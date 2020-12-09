import 'dart:convert';

import 'package:http/http.dart';
import 'package:seismic_app/Temblores.dart';

class HttpService {
  final String postUrl = 'https://api.gael.cl/general/public/sismos';

  Future<List<Temblores>> getPosts() async {
    Response res = await get(postUrl);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Temblores> temblores =
          body.map((dynamic item) => Temblores.fromJson(item)).toList();
      return temblores;
    } else {
      throw "No se pudo conseguir datos.";
    }
  }
}
