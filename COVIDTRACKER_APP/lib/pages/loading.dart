import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:covidtracker_app/pages/covid.dart';



class Covid extends StatefulWidget {
  @override
  _CovidState createState() => _CovidState();
}

class _CovidState extends State<Covid> {

  //List<countrycoviddata> countries =[
  //countrycoviddata(urls: 'IN',locations: 'India'),
  //countrycoviddata(urls: 'AF',locations: 'Afganisthan'),
  //countrycoviddata(urls: 'US',locations: 'USA'),
  //countrycoviddata(urls: 'EU',locations: 'Europe'),
  //countrycoviddata(urls: 'PA',locations: 'Pakistan'),
  //];


void setupdata1() async{
  Coviddata obj=Coviddata();
  await obj.getData1();
  Map data=obj.info;
  Navigator.pushReplacementNamed(context, '/bottom',arguments: data
  );

}
void setupdata2() async{
  countrycoviddata obj=countrycoviddata();
  await obj.getData2();
  Map datas=obj.infos;
  Navigator.pushReplacementNamed(context, '/bottom',arguments: datas
  );

}






  @override
  void initState() {
    super.initState();
    setupdata1();
    setupdata2();



    print('initstate run');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[700],
      body: SafeArea(
        child: Center(


          child:Text('COVID\n TRACKER',
            style: TextStyle(
              fontSize: 70.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),

          ),


        ),
      ),



    );
  }
}

