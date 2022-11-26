import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_this/model/weather_model.dart';

class WeatherApiClient{

Future<Weather>?getCurrentWeather(String? location) async{
  var endpoint=Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?q=$location&APPID=6c9c0bfedf33e15625cb913ca1bbe338&units=metric");
  var response= await http.get(endpoint);
  var body=jsonDecode(response.body);
  print(Weather.fromJson(body).cityName);
  return  Weather.fromJson(body);
}
}