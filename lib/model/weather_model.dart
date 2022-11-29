class Weather{
  String? cityName;
  double? temp;
  String? description;
  double? wind;
  int? humidity;
  int? feelsLike;
  int? pressure;

  Weather({
   this.cityName,
   this.temp,
    this.description,
    this.wind,
    this.humidity,
    this.feelsLike,
    this.pressure,
});

  //function to parse the JSON file into our Weather model
Weather.fromJson(Map<String,dynamic> json){
  cityName=json["name"];
  temp=json["main"]["temp"];
  description=json["weather"][0]["description"];


  wind=json["wind"]["speed"];
  humidity=json["main"]["humidity"];
  feelsLike=json["main"]["feels_like"];
  pressure=json["main"]["pressure"];
}


}