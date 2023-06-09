import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';
import 'package:patientsapp/api.dart';
import 'package:patientsapp/notfication/push_notificatiob.dart';
import 'package:patientsapp/screen_pateint.dart';
import 'dart:async';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// the startimg point of the program
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize the FlutterLocalNotificationsPlugin
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  const AndroidInitializationSettings initializationSettingsAndroid =
      const AndroidInitializationSettings('@mipmap/ic_launcher');
  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  final p1 = await getPaitentDetails(channelid: "1943514");
  final p2 = await getPaitentDetails(channelid: "1943517");
  final p3 = await getPaitentDetails(channelid: "1943526");

  print(p1.channel!.field1);
  print(p1.feeds!.first.field1);
  if (p1.feeds!.first.field1!<80) {
  await showNotification(
      p1.channel!.field1!, "patients pulse is lower than normal");
}else{
  await showNotification(
      p1.channel!.field1!, "patients pulse is higher");
}

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      home: homescreen(),
    );
  }
}

class homescreen extends StatefulWidget {
  homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  String _channelid = "1943514";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Patient Data"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () async {
                  setState(() {
                    _channelid = "1943514";
                  });
                  final _data = await getPaitentDetails(channelid: _channelid);
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ScreenPatient(
                          pdata: _data,
                        );
                      },
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 500,
                    height: 100,
                    color: Colors.blueGrey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(textScaleFactor: 3, "patient 1"),
                        Icon(size: 50, Icons.man),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  setState(() {
                    _channelid = "1943517";
                  });
                  final _data = await getPaitentDetails(channelid: _channelid);
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ScreenPatient(
                          pdata: _data,
                        );
                      },
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 500,
                    height: 100,
                    color: Colors.blueGrey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(textScaleFactor: 3, "patient 2"),
                        Icon(size: 50, Icons.man),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  setState(() {
                    _channelid = "1943526";
                  });
                  final _data = await getPaitentDetails(channelid: _channelid);
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ScreenPatient(
                          pdata: _data,
                        );
                      },
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 500,
                    color: Colors.blueGrey,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(textScaleFactor: 3, "patient 3"),
                        Icon(
                          Icons.man,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
