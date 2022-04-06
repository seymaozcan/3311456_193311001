import 'package:flutter/material.dart';
import 'hakkinda.dart';
import 'myhome_page.dart';
import 'verisayfasi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[100],
        primaryColor: Colors.blue,
      ),
      //home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/':(context)=>MyHomePage(),
        '/hakkinda':(context)=>Hakkinda(),
        '/veriler':(context)=>Veriler(),
      },
    );
  }
}

