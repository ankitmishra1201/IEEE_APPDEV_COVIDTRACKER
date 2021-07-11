

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:covidtracker_app/pages/loading.dart';

class Coviddata {

  late Map info;

  Future<void> getData1() async {
    try {
      Response response = await get(
          Uri.parse('https://corona-api.com/timeline'));
      info = jsonDecode(response.body);
      //Navigator.pushReplacementNamed(context, '/home');
      //print(info);
    }
    catch (e) {
      print(e);
      print('data not found');
    }

  }
}


class countrycoviddata {




  late Map infos;



  Future <void> getData2() async {
    try {
      Response response = await get(
          Uri.parse('https://corona-api.com/countries/IN'));
      Map infos= jsonDecode(response.body);
      //Navigator.pushReplacementNamed(context, '/home');
      print(infos);
    }
    catch (e) {
      print(e);
      print('data not found');
    }

  }
}
  //Future <void> getCovid() async{
    //Response response=await get(Uri.parse('https://corona-api.com/countries/$Code'));
    //Map data=jsonDecode(response.body);
    //print(data);

    //int deaths =data['data']['latest_data']['deaths'];
    //String Death= deaths.toString();
    //print(deaths);

    //confirmed=data['data']['latest_data']['confirmed'];


    //int recovered=data['data']['latest_data']['recovered'];
    //String Recovered=recovered.toString();






  //}


//}



