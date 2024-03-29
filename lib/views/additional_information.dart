import 'package:flutter/material.dart';

TextStyle titleFont =
const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);

TextStyle infoFont =
const TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);

Widget AdditionalInformation (
    String wind,String humidity, String pressure, String feelsLike
    ) {
  return Container(
    width:350,
    decoration: const BoxDecoration(
      borderRadius:  BorderRadius.all(Radius.circular(20)),
      color: Colors.white,
    ),
   // width: double.infinity,
    padding: const EdgeInsets.all(18.0),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Wind",
                  style: titleFont,
                ),
                const SizedBox(height:18.0),
                Text("Pressure",style: titleFont,),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$wind",
              style: infoFont,
                  ),
                const SizedBox(height:18.0),
                Text(
                  "$pressure",
                style: infoFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Humidity",
                  style: ( titleFont),
                ),
                const SizedBox(height:18.0),
                Text("Feels like",
                  style: titleFont,),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$humidity",
                  style: infoFont,
                ),
                const SizedBox(height:18.0),
                Text(
                  "${feelsLike}°C",
                  style: infoFont,
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}