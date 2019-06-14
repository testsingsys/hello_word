import 'package:flutter/material.dart';
import 'dart:async';

import 'main.dart';

void main() => runApp(Splashscreen());

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MySplashscreen(),
    );
  }
}

class MySplashscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MySplashScreenState();
  }
}

class MySplashScreenState extends State<MySplashscreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
      //  children: <Widget>[Image.asset('assets/launch_image.jpg')]
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    timer();
  }

  timer() async
  {
    var duration=Duration(seconds: 0);
    return new Timer(duration,moveToHome);
  }

  void moveToHome()
  {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (BuildContext context)
    {
      return new MyApp();
    }));
  }

}
