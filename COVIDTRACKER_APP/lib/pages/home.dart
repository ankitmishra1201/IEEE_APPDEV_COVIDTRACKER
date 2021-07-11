import 'dart:convert';

import 'package:covidtracker_app/pages/country.dart';
import 'package:flutter/material.dart';
import 'package:covidtracker_app/pages/covid.dart';
import 'package:http/http.dart';
import 'package:graphs/graphs.dart';
import 'package:fl_chart/fl_chart.dart';

class Globe extends StatefulWidget {
  @override
  _GlobeState createState() => _GlobeState();
}

class _GlobeState extends State<Globe> {

late Map info;



  //Future <void> getcoviddata() async {
    //Response response = await get(
       // Uri.parse('https://corona-api.com/countries'));
    //Map data = jsonDecode(response.body);
    //print(data);
    //print(data['data']);

    //String Confirmed = data['data']['latest_data']['deaths'].toString();
    //print(Confirmed);
  //}


  Coviddata obj=new Coviddata();
  //obj.getdata()


  @override
  void initState() {
    super.initState();
    obj.getData1();

  }


  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute
        .of(context)!
        .settings
        .arguments;

    String confirmed_total0=data['data'][0]['confirmed'].toString();


    String total_deaths=data['data'][0]['deaths'].toString();
    String recovered=data['data'][0]['recovered'].toString();
    String new_confirmed=data['data'][0]['new_confirmed'].toString();
    String new_death=data['data'][0]['new_deaths'].toString();
    var country_data = new Map();
    //print(data['data'][0]['latest_data']['deaths']);
    //print(confirmed_total);

    return Scaffold(

      appBar: AppBar(
        title: Text('Covid Tracker'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: SafeArea(
        child: SingleChildScrollView(

          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("GLOBAL",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold

                      ),
                    ),


                  ],
                ),
                SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text("Stay Safe , Always wear a mask,frequently wash your hand with sanitizer or liquid soap, maintain social distancing.If you have any symptomps, please immediately reachout to doctor",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 40, horizontal: 30),
                          margin: EdgeInsets.all(3.0),


                          child: Column(
                            children: <Widget>[
                              Text('Active Cases',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(
                                height: 20.0,
                                thickness: 1.0,
                                color: Colors.white,
                              ),
                              Text(confirmed_total0,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 40, horizontal: 43),
                          child: Column(
                            children: <Widget>[
                              Text('Deaths',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(
                                height: 20.0,
                                thickness: 3.0,
                                color: Colors.white,
                              ),
                              Text(total_deaths,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),


                            ],
                          ),
                        ),


                      ],


                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.green
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 40, horizontal: 100),
                          margin: EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Text('Recovered',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(
                                height: 20.0,
                                thickness: 0.0,

                              ),
                              Text(recovered,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 40, horizontal: 40),
                              margin: EdgeInsets.all(3.0),


                              child: Column(
                                children: <Widget>[
                                  Text('Recent',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('Cases',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Divider(
                                    height: 20.0,
                                    thickness: 1.0,
                                    color: Colors.white,
                                  ),
                                  Text(new_confirmed,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 40, horizontal: 47),
                              child: Column(
                                children: <Widget>[
                                  Text('Recent',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('Deaths',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Divider(
                                    height: 20.0,
                                    thickness: 3.0,
                                    color: Colors.white,
                                  ),
                                  Text(new_death,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),


                                ],
                              ),
                            ),


                          ],


                        ),


                      ],
                    )


                  ],
                ),


              ],
            ),

          ),

        ),
      ),


    );
  }
}
