import 'package:http/http.dart' as http;
import 'dart:convert';

class worker {
  String? location;

  //Constructor

  worker({this.location}) {
    location = this.location;
  }

  String? temp;
  String? humidity;
  String? air_speed;
  String? description;
  String? main;

  //method =
  Future<void> getData() async {
    var url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=1e9daa69c1df496ee8275c163e1721bf");
    var response = await http.get(url);
    Map data = jsonDecode(response.body);

    //Getting Temp,Humidiy
    Map temp_data = data['main'];
    String getHumidity = temp_data['humidity'].toString();
    double getTemp = temp_data['temp'];

//Getting air_speed
    Map wind = data['wind'];
    double getAir_speed = wind["speed"];

    //Getting Description
    List weather_data = data['weather'];
    Map weather_main_data = weather_data[0];
    String getMain_des = weather_main_data['main'];
    String getDesc = weather_main_data["description"];

    //Assigning Values
    temp = getTemp.toString();
    humidity = getHumidity;
    air_speed = getAir_speed.toString();
    description = getDesc;
    main = getMain_des;
  }
}
