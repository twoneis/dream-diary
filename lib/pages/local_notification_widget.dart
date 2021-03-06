import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'add.dart';

class LocalNotificationWidget extends StatefulWidget{
  @override
  _LocalNotificationWidgetState createState() => _LocalNotificationWidgetState();
}

class _LocalNotificationWidgetState extends State<LocalNotificationWidget> {
  final notifications = FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();

    final settingsAndroid = new AndroidInitializationSettings('ic_launcher');
    final settingsIOS = new IOSInitializationSettings(onDidReceiveLocalNotification: (id, title, body, payload) => onSelectNotification(payload));
    notifications.initialize(InitializationSettings(settingsAndroid, settingsIOS,), onSelectNotification: onSelectNotification);
  }

  Future onSelectNotification(String payload) async => await Navigator.push(context, MaterialPageRoute(builder: (context) => Add()));

  @override
  Widget build(BuildContext context) => Container();
}