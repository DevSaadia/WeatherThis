import 'package:flutter/material.dart';
import 'package:weather_this/services/weather_api_client.dart';
import 'package:weather_this/views/additional_information.dart';
import 'package:weather_this/views/current_weather.dart';

import 'model/weather_model.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const  MyApp({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiClient client=WeatherApiClient();
   Weather ?data;

  Future<void>getData() async {
    data= await client.getCurrentWeather("Toronto");
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFE1F4F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE1F4F9),
        elevation: 0.0,
        title: const Text('Weather this',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.settings), // this shows the hamburger menu
            color:Colors.black
        ),
        //TODO: place the 'weatherthis' logo on the top right
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context,snapshot){
          if (snapshot.connectionState==ConnectionState.done){
            return Column(


              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                CurrentWeather(Icons.wb_sunny_rounded,"${data!.temp}°","${data!.cityName}"),
                   const SizedBox(height:  60.0,),
                Container(

                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),

                 // color: Colors.grey,
                  width: 200,
                  height: 300,
                  child: Image.asset('standing_test.png'),

                ),

                   const SizedBox(height:  60.0,),
                   const Text("Additional information",style: TextStyle(fontSize: 24.0, color: Color(0xdd212121),
                       fontWeight: FontWeight.bold),
                   ),
                   const Divider(),
                   const SizedBox(height:20.0 ,),

                   AdditionalInformation("${data!.wind} km/h", "${data!.humidity}%", "${data!.pressure}%", "${data!.feelsLike}°"),
              ],
               );
            }
            else if(snapshot.connectionState==ConnectionState.waiting){
              return const Center(
                child:  CircularProgressIndicator(),
              );
            }
            return Container();
        },


      )
    );
  }
}
