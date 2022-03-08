import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInUpScreen(),
    );
  }
}

class SignInUpScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
