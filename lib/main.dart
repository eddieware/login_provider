import 'package:flutter/material.dart';
import 'package:login_provider/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    //context contiene informacion
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: LoginProvider(),
      ),
    );
  }
}
