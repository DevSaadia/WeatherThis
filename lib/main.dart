import 'package:flutter/material.dart';
import 'package:weather_this/services/weather_api_client.dart';
import 'package:weather_this/settings.dart';
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
        title: const Text('Weather This',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Settings()),);
            },
            icon: const Icon(Icons.settings), // this shows the hamburger menu
            color:Colors.black
        ),
        /*actions: [
          IconButton(onPressed: *//*something*//*, icon: Icon(Icons.refresh, color: Colors.black,))
          //change the onPressed from 'getData' to refresh the contents of the screen
          
        ],*/

        //TODO: place the 'weatherthis' logo on the top right
      ),
      body: SingleChildScrollView(
      child: FutureBuilder(
        future: getData(),
        builder: (context,snapshot){
          if (snapshot.connectionState==ConnectionState.done){
            return Column(

              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Container(
                  width: 350,
                 // width: 350,
                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.white),
                  child: Column(
                    children: [
                      const SizedBox(height:  30.0,),
                      //Text("${data!.temp?.round()}°"),
                      CurrentWeather("${data!.iconCode}","${data!.temp?.round()}","${data!.cityName}","${data!.description}"),
                      const SizedBox(height:  60.0,),
                       (data!.temp!<8)?
                      Image.asset('woman_jacket.PNG'):
                      (data!.temp!>15 && data!.temp!<8)?
                      Image.asset('woman_sweater.PNG'):
                      Image.asset('woman_shorts.PNG'),

                      const SizedBox(height:  40.0,),
                    ],
                  )
                ),

                   const SizedBox(height:  30.0,),
                   const Text("Current Conditions",style: TextStyle(fontSize: 24.0, color: Color(0xdd212121),
                       fontWeight: FontWeight.bold),
                   ),
                   const Divider(),
                   const SizedBox(height:20.0 ,),

                   AdditionalInformation("${data!.wind} km/h", "${data!.humidity}%", "${data!.pressure}%", "${data!.feelsLike?.round()}"),
                const SizedBox(height:  30.0,),
                const Text("Hourly Forecast",style: TextStyle(fontSize: 24.0, color: Color(0xdd212121),
                    fontWeight: FontWeight.bold),
                ),
                const Divider(),
                const SizedBox(height:20.0 ,),

                AdditionalInformation("${data!.wind} km/h", "${data!.humidity}%", "${data!.pressure}%", "${data!.feelsLike?.round()}"),
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
      )
    );
  }
}
