class Weather{
  String? iconCode;
  String? cityName;
  double? temp;
  String? description;
  double? wind;
  int? humidity;
  int? pressure;
  double? feelsLike;

  Weather({
    this.iconCode,
   this.cityName,
   this.temp,
    this.description,
    this.wind,
    this.humidity,
    this.pressure,
    this.feelsLike,
});

  //function to parse the JSON file into our Weather model
Weather.fromJson(Map<String,dynamic> json){
  //cityName=json["name"];
  iconCode=json["weather"][0]["icon"];
  temp=json["main"]["temp"];
  cityName=json["name"];
  description=json["weather"][0]["description"];

  wind=json["wind"]["speed"];
  humidity=json["main"]["humidity"];
  pressure=json["main"]["pressure"];
  feelsLike=json["main"]["feels_like"];

}

}