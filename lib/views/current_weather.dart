

import 'package:flutter/material.dart';

Widget CurrentWeather(IconData icon, String temp, String location) {


  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Icon(
             icon,
             color: Colors.orange,
           size: 64.0,
         ),
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
                 style: TextStyle(
                   fontSize: 18.0,
                   color: Colors.black,
                 )
             )
           ],
         ),
         Text(
           "$temp",
           style: TextStyle(
               fontSize:  56.0,
             fontWeight: FontWeight.bold,

           ),
         ),
         SizedBox(height: 10.0,),

       ],
    ),
  );
}