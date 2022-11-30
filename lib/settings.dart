

import 'package:flutter/material.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String units="CELSIUS";
  String gender="female";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Settings',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body:
        SingleChildScrollView(
          child: Container(
            width: 350,
            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))/*,color: Colors.white*/),
            padding: const EdgeInsets.all(25.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            children:   [
              const SizedBox(height:  5.0,),
              const Text ("NAME",style: TextStyle(color: Colors.white),),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left:10,right: 10),
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: Colors.white),
                child: const TextField(textAlign: TextAlign.left,),
              ),
              const SizedBox(height: 10,),
              const Text("PHONE NUMBER",style: TextStyle(color: Colors.white),),
              const SizedBox(height: 5,),
              Container(
                padding: const EdgeInsets.only(left:10,right: 10),
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: Colors.white),
                child: const TextField(
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.phone,
                  ),
              ),
              const SizedBox(height: 10,),
              const Text("EMAIL ADDRESS",style: TextStyle(color: Colors.white),),
              const SizedBox(height: 5,),
              Container(
                padding: const EdgeInsets.only(left:10,right: 10),
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: Colors.white),
                child: const TextField(textAlign: TextAlign.left,keyboardType: TextInputType.emailAddress,),
              ),
              const SizedBox(height: 10,),
              const Text("LOCATION (CITY)",style: TextStyle(color: Colors.white),),
              const SizedBox(height: 5,),
              Container(
                padding: const EdgeInsets.only(left:10,right: 10),
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: Colors.white),
                child: const TextField(textAlign: TextAlign.left,),
              ),
              const SizedBox(height: 10,),
              const Text("FAHRENHEIT OR CELSIUS",style: TextStyle(color: Colors.white),),
              const SizedBox(height: 5,),

              //Units radio buttons
              Theme(
                data: ThemeData(unselectedWidgetColor: Colors.white,), //<-- SEE HERE
                child: Column(
                  children: [
                    ListTile(
                      title: const Text("FAHRENHEIT (°F)",style: TextStyle(color: Colors.white),),
                      leading: Radio(
                        value: "FAHRENHEIT",
                        groupValue: units,
                        fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.green),
                        onChanged: (value) {
                          setState(() {
                            units= value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text("CELSIUS (°C)",style: TextStyle(color: Colors.white),),
                      leading: Radio(
                        value: "CELSIUS",
                        groupValue: units,
                        fillColor:
                        MaterialStateColor.resolveWith((states) => Colors.green),
                        onChanged: ( value) {
                          setState(() {
                            units = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),



              //ADD GENDER RADIO BUTTONS HERE
              const SizedBox(height: 10,),
              const Text("CHARACTER GENDER",style: TextStyle(color: Colors.white),),
              const SizedBox(height: 5,),
            //ADD MALE/FEMALE BUTTONS HERE
            ElevatedButton(onPressed: (){}, child: const Text('CONFIRM')),
            ],
          ),
          )
        )
    );
  }
}
