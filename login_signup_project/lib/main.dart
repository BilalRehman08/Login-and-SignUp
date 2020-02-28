
import 'package:flutter/material.dart';
import 'package:login_signup/lgoinpage.dart';
import 'package:login_signup/signuppage.dart';
import 'package:login_signup/homepage.dart';
import 'package:login_signup/splash.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rehmania Institute',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: Splash(),
        routes: <String,WidgetBuilder>{
          '/landingpage': (BuildContext context) => myapp(),
          '/loginpage': (BuildContext context) => Loginpage(),
          '/signuppage':(BuildContext context) => SignUp(),
          '/homepage': (BuildContext context) => HomePage()
        }
    );
  }
}