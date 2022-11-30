

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CurrentWeather(String iconCode, String temp, String location, String description) {


  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
       children: [

         Image.network("http://openweathermap.org/img/wn/$iconCode@2x.png"),
         SizedBox(height: 10.0,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Icon(
               Icons.location_pin,
             ),
             Text(
                 "$location",
                 style: GoogleFonts.poppins(
                   textStyle: TextStyle(fontSize: 18.0,),
                   fontWeight: FontWeight.bold,
                 ),
             )
           ],
         ),
         Text(
           "$temp°C",
           style: GoogleFonts.poppins(
             textStyle:
            const TextStyle(
               fontSize:  45.0),
             fontWeight: FontWeight.bold,

           ),
         ),
         //SizedBox(height: 40.0,),
         Text(
           "$description",
           style: GoogleFonts.poppins(
               textStyle: TextStyle(fontSize: 18),
               fontWeight: FontWeight.w700
           ),

         ),
       ],
    ),
  );
}