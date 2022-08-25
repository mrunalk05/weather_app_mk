import 'dart:html';
import 'package:timeapp/worker/worker.dart';
import 'loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Map info = ModalRoute.of(context)!.settings.arguments as Map;
    String temp = ((info['temp_value']).toString()).substring(0, 4);
    //String icon = info['icon_value'];
    String tempmax = info['temp_max'];
    String tempmin = info['temp_min'];
    String getcity = info['city'];
    String humi = info['humi'];
    String pre = info['pre'];
    String air = ((info['air_speed']).toString()).substring(0, 4);
    String des = info['description'];
    print(info);

    //print(info['pre']);
    //  String x = ((info['hum']).toString().substring(0, 4));
    //String icon = info['icon_value'];

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(50),
            margin: EdgeInsets.all(30),
            child: Text("Tempreture: $temp"),
            color: Colors.amber,
          ),
          Container(
            padding: EdgeInsets.all(50),
            margin: EdgeInsets.all(30),
            child: Text("Humidity: $humi"),
            color: Colors.amber,
          ),
          Container(
            padding: EdgeInsets.all(50),
            margin: EdgeInsets.all(30),
            child: Text("Pressure: $pre"),
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
