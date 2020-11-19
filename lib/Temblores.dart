import 'package:flutter/cupertino.dart';

class Temblores {
  final String fecha;
  final String latitud;
  final String longitud;
  final String profundidad;
  final String magnitud;
  final String agencia;
  final String refGeografica;
  final String fechaUpdate;

  Temblores({
    @required this.fecha,
    @required this.latitud,
    @required this.longitud,
    @required this.profundidad,
    @required this.magnitud,
    @required this.agencia,
    @required this.refGeografica,
    @required this.fechaUpdate,
  });

  factory Temblores.fromJson(Map<String, dynamic> json) {
    return Temblores(
      fecha: json['Fecha'] as String,
      latitud: json['Latitud'] as String,
      longitud: json['Longitud'] as String,
      profundidad: json['Profundidad'] as String,
      magnitud: json['Magnitud'] as String,
      agencia: json['Agencia'] as String,
      refGeografica: json['RefGeografica'] as String,
      fechaUpdate: json['FechaUpdate'] as String,
    );
  }
}
