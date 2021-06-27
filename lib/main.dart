import 'package:flutter/material.dart';
import 'package:flutter_firstapp/counter_screen.dart';
import 'package:flutter_firstapp/home_screen.dart';
import 'package:flutter_firstapp/login_screen.dart';
import 'package:flutter_firstapp/messanger_screen.dart';
import 'package:flutter_firstapp/users_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen() ,
    );

  }

}
