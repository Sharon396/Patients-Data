import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:patientsapp/api.dart';

FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

Future<void> showNotification(String title, String body) async {
  final data = await getPaitentDetails(channelid: "1943514");
  final pulse = data.feeds!.elementAt(0).field1;
  bool pusle_Bool() {
    if (pulse == "8") {
      var pulse_bool = false;
      return pulse_bool;
    } else {
      var pulse_bool = false;
      return pulse_bool;
    }
  }

  // Define the channel to show the notification on Android
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    'your channel id',
    'your channel name',
    importance: Importance.max,
    priority: Priority.high,
    showWhen: true,
  );
  const NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);

  // Show the notification
  await flutterLocalNotificationsPlugin!.show(
    0,
    "pateint 1",
    data.feeds!.elementAt(0).field1,
    platformChannelSpecifics,
    payload: 'Default_Sound',
  );
}
