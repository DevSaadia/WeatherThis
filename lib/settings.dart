import 'package:flutter/material.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0x0000),
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
                child: const TextField(textAlign: TextAlign.left,),
              ),
              const SizedBox(height: 10,),
              const Text("EMAIL ADDRESS",style: TextStyle(color: Colors.white),),
              const SizedBox(height: 5,),
              Container(
                padding: const EdgeInsets.only(left:10,right: 10),
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: Colors.white),
                child: const TextField(textAlign: TextAlign.left,),
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
              //ADD RADIO BUTTONS HERE
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
