import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_signup/lgoinpage.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:2),()=> Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
      return Loginpage();
    })));

  }
  @override
  Widget build(BuildContext context) {


    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("REHMANIA",style: TextStyle(letterSpacing: 4.0,fontWeight: FontWeight.bold,fontSize: 60.0,color: Colors.blue[900],decoration: TextDecoration.none)),
          SizedBox(height:0.0),
          Text("INSTITUTE",style: TextStyle(fontSize: 30.0,color: Colors.blue[900],decoration: TextDecoration.none))
        ],
      ),
    );
  }
}