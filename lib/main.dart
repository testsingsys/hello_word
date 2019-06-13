import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo First Day'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {


    Widget titleText = Container(
      width: 100,
      margin: EdgeInsets.fromLTRB(20, 100, 20, 20),
      alignment: Alignment.center,
      child: Center(
        child: new Text("Hello Word !"),
      ),
    );

    Widget email = Container(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: TextFormField(
          keyboardType: TextInputType.text,
          autofocus: false,
          decoration: InputDecoration(
              hintText: 'Username',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
        ));

    Widget password = Container(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: 'Password',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
        ));

    Widget submitButton=Container(
      height: 40,
      width: 200,
      margin: EdgeInsets.all(20),
      alignment: Alignment.center,
      //color: Colors.blue,
      child: new Text("Submit",textAlign: TextAlign.center,style: TextStyle(
        color: Colors.white),),
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.blue),
    );
    
    Widget logo=Container(
      child: Image.asset("assets/logo.png",width: 100,height: 100,)
    );

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            logo,
            titleText,
            email,
            password,
          submitButton],
        ),
      ),
    );
  }
}
