import 'package:flutter/material.dart';
import 'package:seismic_app/home copy.dart';
import 'package:seismic_app/push_notification_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    final pushProavider = new PushNotificationProvider();
    pushProavider.initNotification();
    pushProavider.fcmSubscribe();
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
