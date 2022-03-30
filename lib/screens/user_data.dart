// import 'package:alert_dialog/model_class.dart';
import 'package:flutter/material.dart';
// import 'package:alert_dialog/model_class.dart';
// import 'package:flutter/material.dart';
// import 'package:convert/convert.dart';
import 'package:http/http.dart';

class UserData extends StatefulWidget {
  UserData({Key? key}) : super(key: key);

  @override
  State<UserData> createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  final url = "https://jsonplaceholder.typicode.com/posts";
  void postData() async {
    try {
      final response = await post(Uri.parse(url),
          body: {"title": "Anything", "body": "Post body", "userId": "1"});

      print(response.body);
    } catch (er) {}
    ;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
            child: ElevatedButton(onPressed: postData, child: Text("Post"))),
      ),
    );
  }
}
