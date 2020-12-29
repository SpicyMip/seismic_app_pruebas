import 'package:flutter/material.dart';
import 'package:seismic_app/home copy.dart';
import 'package:seismic_app/push_notification_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Esta parte de codigo inicia las notificaciones.
  // Las notificaciones solo se mostraran cuando la aplicacion
  // este de 2do plano, Al implementar una forma de configurar
  // recuerde borrar la linea aplicada.
  @override
  void initState() {
    super.initState();
    final pushProavider = new PushNotificationProvider();
    pushProavider.initNotification();
    config();
    //borrar esta linea al crear las configuraciones
  }

  Future<void> config() async {
    await sharedPrefs.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home2(),
        theme: ThemeData(
          primaryColor: Colors.lightBlue,
          accentColor: Colors.lightBlue,
        ));
  }
}

class SharedPrefs {
  static SharedPreferences _sharedPrefs;
  init() async {
    if (_sharedPrefs == null) {
      _sharedPrefs = await SharedPreferences.getInstance();
    }
  }

  bool get notificaciones => _sharedPrefs.getBool('bool') ?? true;
  double get magnitud => _sharedPrefs.getDouble('double') ?? 5.5;

  set notificaciones(bool value) {
    _sharedPrefs.setBool('bool', value);
  }

  set magnitud(double value) {
    _sharedPrefs.setDouble('double', value);
  }

  void notif(bool value) {
    _sharedPrefs.setBool('bool', value);
  }

  void magni(double value) {
    _sharedPrefs.setDouble('double', value);
  }
}

final sharedPrefs = SharedPrefs();
