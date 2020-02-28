import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("You are now login"),
              RaisedButton(
                child: Text("Logout"),
                color: Colors.blue,
                onPressed: (){
                  Navigator.of(context).pushNamed('/loginpage');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}