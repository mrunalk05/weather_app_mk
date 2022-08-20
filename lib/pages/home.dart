import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Map info = ModalRoute.of(context)!.settings.arguments as Map;
    //  String x = ((info['hum']).toString().substring(0, 4));
    return Scaffold(
        body: Column(
           children: [
             FloatingActionButton(onPressed: (){}),
             Text(info['pre'])
           ],
           

        ),
    ) ;    
           
  }
}
