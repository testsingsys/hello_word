import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

class MyDashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyDashboardState();
}

class MyDashboardState extends State<MyDashboard> {
  TextEditingController usernameEditController = TextEditingController();
  TextEditingController passwordEditController = TextEditingController();

  String imagePath = 'assets/person.jpg';
  String icon = 'assets/logo.png';

  Random _random = Random();

  @override
  Widget build(BuildContext context) {
    Widget titleText = Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      alignment: Alignment.center,
      child: Center(
        child: new Text(
          "Dashboard",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );

    Widget profileicon = Container(child: Image.asset(imagePath));

    Widget list(String data) {
      Widget list = Column(
        children: <Widget>[
          Container(
            height: 50,
            color: colorGenerator(),
            child: Center(child: Text(data)),
          )
        ],
      );
      return list;
    }

    ;

    Widget listview = Container(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(0, 25, 100, 0),
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: list("List $index"),
            onTap: itemvalue,
          );
        },
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[profileicon, titleText]),
      drawer: listview,
      bottomSheet: BottomNavigationBar(items: [
        new BottomNavigationBarItem(
            icon: Icon(Icons.home), title: Text("Home")),
        new BottomNavigationBarItem(
            icon: Icon(Icons.history), title: Text("History")),
        new BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app), title: Text("Logout"))
      ]),
    );
  }

  Color colorGenerator() {
    Color color = Color.fromARGB(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
    return color;
  }

  void itemvalue() {
    Fluttertoast.showToast(msg: "Comming Soon");
  }
}
