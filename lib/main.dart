import 'package:flutter/material.dart';
import 'package:favent/Theme/colors.dart';
import 'package:favent/pages/homepage.dart';
import 'package:favent/pages/profile.dart';
import 'package:favent/pages/dashboard.dart';
import 'package:favent/pages/favors/reqCategories.dart';
import 'package:favent/pages/authentication/login.dart';
import 'package:favent/pages/inapp_purchases/iap_favent.dart';
import 'backend/device/location.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favent',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryBlack,
      ),
      home: MyHomePage(title: 'Dashboard'),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => MyHomePage(),
          '/favorsreq': (BuildContext context) => reqCategories(),
          '/favorsinv': (BuildContext context) => inventory(),
          '/login': (BuildContext context) => loginpage(),
          '/iap' : (BuildContext context) => buypoints(),
        }
    );
  }
}

