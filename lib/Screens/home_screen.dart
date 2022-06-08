import 'package:alert_dialog/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void showNotification() {
    setState(() {
      _counter++;
    });
    flutterLocalNotificationsPlugin.show(
        89,
        "Testing $_counter",
        "How you doing?",
        NotificationDetails(
            android: AndroidNotificationDetails(channel.id, channel.name,
                importance: Importance.high,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Notification Demo"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                child: buildUi(),
                onTap: () {
                  showNotification();
                })
          ],
        ));
  }

  Widget buildUi() {
    return Center(
      child: Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 12.98),
          width: MediaQuery.of(context).size.width / 1.68,
          height: MediaQuery.of(context).size.height / 18.75,
          decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(50))),
          alignment: Alignment.center,
          child: const Text("Simple Notification")),
    );
  }

  // Future notificationSelected(String payload) async {}
}
