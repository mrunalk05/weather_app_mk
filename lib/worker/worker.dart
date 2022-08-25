import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class worker {
  String? location;

  //Constructor

  worker({this.location}) {
    location = this.location;
  }
  String? city;
  String? temp;
  String? temp_max;
  String? temp_min;
  String? humidity;
  String? pressure;
  String? air_speed;
  String? description;
  String? time;

  Future<void> getData() async {
    var url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=1e9daa69c1df496ee8275c163e1721bf");
    var response = await http.get(url);
    Map data = jsonDecode(response.body);

    Map temp_data = data['main'];
    String getHumidity = temp_data['humidity'].toString();
    double getTemp = temp_data['temp'] - 273.15;
    String getPressure = temp_data['pressure'].toString();
    double getTempMax = temp_data['temp_max'];
    double getTempMin = temp_data['temp_min'];

//Getting air_speed
    Map wind = data['wind'];
    double getAir_speed = wind["speed"] / 0.27777777777778;

    List weather_data = data['weather'];
    Map weather_main_data = weather_data[0];
    String getDesc = weather_main_data["description"];

    //Assigning Values
    temp = getTemp.toString().substring(0, 4);
    humidity = getHumidity; //.substring(0, 4);
    air_speed = getAir_speed.toString().substring(0, 4);
    description = getDesc;
    pressure = getPressure;
    temp_min = getTempMin.toString().substring(0, 4);
    temp_max = getTempMax.toString().substring(0, 4);
  }
}
