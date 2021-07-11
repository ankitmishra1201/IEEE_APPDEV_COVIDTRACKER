import 'package:covidtracker_app/pages/country.dart';
import 'package:covidtracker_app/pages/bottom_nav_screen.dart';
import 'package:covidtracker_app/pages/list.dart';


import 'package:covidtracker_app/pages/loading.dart';

import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'package:covidtracker_app/pages/graph.dart';

void main()=> runApp(MaterialApp(
  initialRoute: '/',
  routes: {


    '/':(context)=>Covid(),
    '/list':(context)=>List(),



    '/bottom':(context)=>BottomNavScreen(),
    '/graph':(context)=>Graph(),
    '/home':(context)=>Globe(),
    '/country':(context)=>country(),



  },
  



));