import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hello_word/Dashboard.dart';



class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final routes = <String, WidgetBuilder>{
    Dashboard.tag: (context) => Dashboard(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo First Day'),
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  TextEditingController usernameEditController = TextEditingController();
  TextEditingController passwordEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget titleText = Container(
      width: 100,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      alignment: Alignment.center,
      child: Center(
        child: new Text(
          "Hello Word !",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );

    Widget email = Container(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: TextFormField(
          keyboardType: TextInputType.text,
          controller: usernameEditController,
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
          controller: passwordEditController,
          decoration: InputDecoration(
              hintText: 'Password',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
        ));

    Widget logginButton = ButtonTheme(
        minWidth: 200,
        height: 50,
        child: Container(
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          //color: Colors.blue,
          child: RaisedButton(
            onPressed: submit,
            color: Colors.blue,
            textColor: Colors.white,
            child: new Text("Login"),
          ),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)))));

    Widget logo = Container(
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Image.asset(
          "assets/logo.png",
          width: 100,
          height: 100,
        ));

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[logo, titleText, email, password, logginButton],
        ),
      ),
    );
  }

  void flutterToast(String message)
  {
    Fluttertoast.showToast(msg: message);
  }

  void submit() {
    var username = usernameEditController.text;
    var password = passwordEditController.text;

    if (username.isEmpty) {
      flutterToast("username required *");
    } else if (password.isEmpty) {
      flutterToast("password required *");
    } else {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (BuildContext context) {
        return new Dashboard();
      }));
    }
  }
}
