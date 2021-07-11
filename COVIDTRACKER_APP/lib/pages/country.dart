import 'package:flutter/material.dart';
import 'package:covidtracker_app/pages/home.dart';
import 'package:covidtracker_app/pages/covid.dart';
import 'package:covidtracker_app/pages/loading.dart';



class country extends StatefulWidget {
  @override
  _countryState createState() => _countryState();
}



class _countryState extends State<country> {

  late Map infos;







 countrycoviddata obj=countrycoviddata();
 //obj.getdata()


@override
void initState() {
  super.initState();
  obj.getData2();

}


@override
Widget build(BuildContext context) {
  dynamic datas = ModalRoute
      .of(context)!
      .settings
      .arguments;

  print(datas);
  String confirmed_total1=datas['data'][0]['confirmed'].toString();
  String total_deaths=datas['data'][0]['deaths'].toString();
  String recovered=datas['data'][0]['recovered'].toString();
  String new_confirmed=datas['data'][1]['new_confirmed'].toString();
  String new_death=datas['data'][1]['new_deaths'].toString();
  var countrycovid_data = new Map();




    return Scaffold(
      appBar: AppBar(
        title: Text('Covid Tracker'),
        centerTitle: true,
        backgroundColor: Colors.black,

      ),
      body:SingleChildScrollView(

        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius:BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("COUNTRY",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold

                    ),
                  ),
                  FlatButton.icon(
                       onPressed:() async{
                         dynamic result=await Navigator.pushNamed(context, '/list');


                       } ,
                       icon: Icon(Icons.location_on_outlined,
                       color: Colors.white),
                      label:Text('Choose Country',
                      style: TextStyle(
                        color: Colors.white,
                      ),),
                  ),


                ],
              ),
              SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:<Widget> [
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
                children:<Widget> [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:<Widget> [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 40,horizontal: 30),
                        margin: EdgeInsets.all(3.0),



                        child:Column(
                          children:<Widget>[
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
                            Text('30837222' ,
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
                        padding: EdgeInsets.symmetric(vertical: 40,horizontal: 43),
                        child:Column(
                          children:<Widget>[
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
                            Text('40872',
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
                        padding: EdgeInsets.symmetric(vertical: 40,horizontal: 100),
                        margin: EdgeInsets.all(10.0),
                        child:Column(
                          children:<Widget>[
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
                            Text('29975064',
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
                            Text('991',
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
                            Text('0',
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

        ),
      ),

    );











  }
}
