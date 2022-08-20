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
  worker instance = worker(location: 'delhi');
  void StartApp() async {
    worker instance = worker(location: 'delhi');
    await instance.getData();
    temp = instance.air_speed;
    temp_max = instance.temp_max;
    temp_min = instance.temp_min;
    humidity = instance.humidity;
    pressure = instance.pressure;
    air_speed = instance.air_speed;
    description = instance.description;
    Navigator.pushNamed(context, '/home', arguments: {
      "temp_value": temp,
      "tempmax": temp_max,
      "tempmin": temp_min,
      "humi": humidity,
      "pre": pressure,
      "air": air_speed,
      "des": description,
    });
  }

  String? temp;
  String? temp_max;
  String? temp_min;
  String? humidity;
  String? pressure;
  String? air_speed;
  String? description;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // StartApp();

    // futurealbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('Weather Update'),
        centerTitle: true,
        backgroundColor: Color(0xff012c4f),
      ),
      body: Column(
         children: [
           Text("Fresh Express"),
           Text("Todays Weather"),
           Image.network('https://media-exp2.licdn.com/dms/image/C510BAQEas6Br-ACNLg/company-logo_200_200/0/1519904654756?e=2147483647&v=beta&t=NxP3_oIkewoecBmZqmCUn1wjEeiwCWHnbx2dkGoDUxM')
         ],
      )
    );
  }
}
