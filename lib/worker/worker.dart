//import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// class Album {
//   final String location;
//   final double temp;
//   final double humidity;
//   final String description;

//   const Album({
//     required this.location,
//     required this.temp,
//     required this.humidity,
//     required this.description,
//   });

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       location: json['location'],
//       temp: json['userId'],
//       humidity: json['id'],
//       description: json['title'],
//     );
//   }

//   Future<http.Response> fetchAlbum() {
//     return http.get(Uri.parse(
//         'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=1e9daa69c1df496ee8275c163e1721bf'));
//   }
// }

class worker {
  String? location;
  String description;
  String? temp;
  String? temp_min;
  String? temp_max;
  String? pressure;
  String? humidity;
  String? speed;
  String? sunrise;
  String? sunset;

  worker({
    required this.location,
    //  required this.location,
    required this.description,
    // required  this.temp,
    //  required this.temp_max,
    // required  this.temp_min,
    // required  this.pressure,
    //  required this.humidity,
    //  required this.speed,
    // required  this.sunrise,
    //  required this.sunset
  }) {
    location = this.location;
    description = this.description;
    // temp = this.temp;
    // temp_max = this.temp_max;
    // temp_min = this.temp_min;
    // pressure = this.pressure;
    // humidity = this.humidity;
    // speed = this.speed;
    // sunrise = this.sunrise;
    // sunset = this.sunset;
  }

  Future<void> getData() async {
    var url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=1e9daa69c1df496ee8275c163e1721bf");
    var response = await http.get(url);
    Map data = jsonDecode(response.body);

    Map<String, dynamic> weather_data = data['weather'];
    // String getDesc = weather_data['description'];

    // Map<String, dynamic> main = data['main'];
    // double getTemp = main['temp'];
    // double getTemp_max = main['temp_max'];
    // double getTemp_min = main['temp_min'];
    // double getPressure = main['pressure'];
    // double getHumidity = main['humidity'];

    // Map<String, dynamic> wind = data['wind'];
    // double getSpeed = wind['speed'];

    // Map<String, dynamic> sys = data['sys'];
    // double getSunrise = sys['sunrise'];
    // double getSunset = sys['sunset'];

    //String description = getDesc;
    // String temp = getTemp.toString();
    // String temp_min = getTemp_min.toString();
    // String temp_max = getTemp_max.toString();
    // String pressure = getPressure.toString();
    // String humidity = getHumidity.toString();
    // String speed = getSpeed.toString();
    // String sunrise = getSunrise.toString();
    // String sunset = getSunset.toString();
  }
}
