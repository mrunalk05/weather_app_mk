//import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:timeapp/worker/worker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // worker instance = worker(location: 'Mumbai');
  // void StartApp() async {
  //   worker instance = worker(location: 'Mumbai');
  //   await instance.getData();
  //   print(instance.description);
  // }
  // late Future<Album> futurealbum;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // futurealbum = fetchAlbum();
  }

  void gettime() async {
    var url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=mumbai&appid=1e9daa69c1df496ee8275c163e1721bf");
    var response = await http.get(url);
    Map data = jsonDecode(response.body);
    Map weatherdata = data['weather'];
    String desc = weatherdata['description'];
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('Weather'),
        centerTitle: true,
        backgroundColor: Color(0xff012c4f),
      ),
      body: Text('Welcome to Loading page!!'),
    );
  }
}
