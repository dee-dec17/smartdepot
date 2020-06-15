import 'package:flutter/material.dart';
import 'package:smartdepot/Data.dart';
import 'package:smartdepot/Sample.dart';
import 'package:smartdepot/TestingMap.dart';
import 'UserLogin.dart';
import 'DealerLogin.dart';
import 'Dealer.dart';
import 'User.dart';
import 'Data.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: <String,WidgetBuilder>{
        "/UserLogin": (BuildContext context) => UserLogin(),
        "/DealerLogin": (BuildContext context) => DealerLogin(),
        "/Dealer" : (BuildContext context) => Dealer(),
        "/User" : (BuildContext context) => User(),
        "/HomePage" : (BuildContext context) => HomePage(),
        "/Sample" : (BuildContext context) => SampleMap(lat: null, long: null,),
        //"/TestingMap" : (BuildContext context) => TestingMap(),

      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text("Smart Depot"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
                alignment: Alignment.topCenter,
                child: ClipOval(
                  child: Image.asset("images/ration.jpeg"),
                )
              ),
              Container(
                child: Text("Please click the User/Dealer button to proceed",),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(75.0),
                    side: BorderSide(color: Colors.purple)),
                  textColor: Colors.white,
                  color: Colors.purple,
                  onPressed: () => {Navigator.pushReplacementNamed(context, "/UserLogin")},
                  child: Text("User"),
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(75.0),
                    side: BorderSide(color: Colors.purple)),
                  textColor: Colors.white,
                  color: Colors.purple,
                  onPressed: () => {Navigator.pushReplacementNamed(context, "/DealerLogin")},
                  child: Text("Dealer"),
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
