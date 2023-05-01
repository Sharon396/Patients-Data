import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:patientsapp/main.dart';
Future<void> showNotification(String title, String body) async {
  // Define the channel to show the notification on Android
  const AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'your channel id', 'your channel name', 
    importance: Importance.max,
    priority: Priority.high,
    showWhen: true,
  );
  const NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);

  // Show the notification
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  await flutterLocalNotificationsPlugin.show(
    0, title, body, platformChannelSpecifics,
    payload: 'item x',
  );
}
