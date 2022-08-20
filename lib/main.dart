import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/chooselocation.dart';
import 'pages/loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => Chooselocation(),
      },
    ));
