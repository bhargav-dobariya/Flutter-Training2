import 'dart:convert';

import 'package:alert_dialog/jokes_model/jokes_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<JokesModel> getJokes() async {
    http.Response response = await http.get(
        Uri.parse("https://v2.jokeapi.dev/joke/Any?type=single&amount=10"));
    JokesModel jokesModel = JokesModel.fromJson(json.decode(response.body));
    return jokesModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          alignment: Alignment.center,
          child: FutureBuilder(
            future: getJokes(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                JokesModel? jokesModel = snapshot.data as JokesModel?;
                return Text(jokesModel!.jokes![3].joke.toString());
              } else {
                return const CircularProgressIndicator();
              }
            },
          )),
    ));
  }
}
