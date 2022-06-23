
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 var d = 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F2244),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Column(
            children: [
              Expanded(child: Text(
                "Prayagraj, Uttar Pradesh", textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: 'font1',
                    fontWeight: FontWeight.w500),)),
              Expanded(child: Text("India", textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: 'font1',
                    fontWeight: FontWeight.w500),)),
              Expanded(
                child: Text(d.day.toString() + " " + getMonth(d.month) + " " +
                    d.year.toString(), style: TextStyle(color: Color(
                    0x45FFFFFF), fontSize: 25.0, fontFamily: 'font1'),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RawMaterialButton(onPressed: () {},
                    fillColor: Colors.blue,
                    constraints: BoxConstraints(
                        minWidth: 150.0, minHeight: 45.0),),

                  RawMaterialButton(onPressed: () {},
                    fillColor: const Color(0xFF142B56),
                    constraints: BoxConstraints(
                        minWidth: 150.0, minHeight: 45.0),),

                ],
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset(
                  'images/sunny.png', width: 200, height: 200,),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Temperature", style: TextStyle(color: Color(
                            0x45FFFFFF), fontSize: 25.0, fontFamily: 'font1'),),
                        Text("32 ° C", style: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 25.0,
                            fontFamily: 'font1'),),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Wind", style: TextStyle(color: Color(
                            0x45FFFFFF), fontSize: 25.0, fontFamily: 'font1'),),
                        Text('12 Km/hr', style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 25.0,
                            fontFamily: 'font1'),),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Humidity", style: TextStyle(color: Color(
                            0x45FFFFFF), fontSize: 25.0, fontFamily: 'font1'),),
                        Text("65 %", style: TextStyle(color: Color(0xFFFFFFFF),
                            fontSize: 25.0,
                            fontFamily: 'font1'),),
                      ],
                    ),
                  ]
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text("Today", style: TextStyle(color: Color(
                        0xFFFFFFFF), fontSize: 25.0, fontFamily: 'font1'),),
                    Text("View full report", style: TextStyle(color: Color(
                        0x900080F1), fontSize: 25.0, fontFamily: 'font1'),),
                  ],
                ),
              ),


              Container(
                width: 100,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/sunny.png', width: 40, height: 40,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("17:00", style: TextStyle(color: Color(
                            0xFFFFFFFF), fontSize: 20.0, fontFamily: 'font1'),),
                        Text("32`", style: TextStyle(color: Color(
                            0xFFFFFFFF), fontSize: 25.0, fontFamily: 'font1'),),
                      ],
                    )
                  ],
                ),
              )


            ]
            ,
          ),
        ),
      ),

    );
  }


// TODO : WRITE MONTHS AND RETURN IT
String getMonth(int month){
  switch(month){
    case 1 : return 'January';
    case 2 : return 'February';
    case 3 : return 'March';
    case 4 : return 'April';
    default : return 'April';
  }
}