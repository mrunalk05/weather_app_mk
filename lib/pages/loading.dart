//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:timeapp/worker/worker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  worker instance = worker(location: 'Mumbai');
  void StartApp() async {
    worker instance = worker(location: 'Mumbai');
    await instance.getData();
    print(instance.pressure);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    StartApp();

    // futurealbum = fetchAlbum();
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
