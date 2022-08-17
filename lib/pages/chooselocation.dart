import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Chooselocation extends StatefulWidget {
  const Chooselocation({Key? key}) : super(key: key);
  _ChooselocationState createState() => _ChooselocationState();
}

class _ChooselocationState extends State<Chooselocation> {
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text('Weather'),
          centerTitle: true,
          backgroundColor: Color(0xff024174),
        ),
        body: RaisedButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text('Counter is $counter'),
        ));
  }
}
