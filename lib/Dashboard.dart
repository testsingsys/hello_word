import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  static String tag = 'dashboard';

  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyDashboard(),
    );



}

class MyDashboard extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => MyDashboardState();

}

class MyDashboardState extends State<MyDashboard> {
  TextEditingController usernameEditController = TextEditingController();
  TextEditingController passwordEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget titleText = Container(
      width: 100,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      alignment: Alignment.center,
      child: Center(
        child: new Text("Dashboard",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[titleText],
        ),
      ),
    );
  }


}