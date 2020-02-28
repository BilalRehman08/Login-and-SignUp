import 'package:flutter/material.dart';


class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          child:Padding(padding: EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 75.0,
                  child: Image.asset('assets/logo3.jpg'),
                ),
                SizedBox(height:10.0),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)
                    ),
                    contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    labelText: 'Email',
                    prefixIcon: const Icon(Icons.person, color: Colors.blue),
                  ),
                ),
                SizedBox(height:10.0),
                TextField(
                  autofocus: false,
                  obscureText: true,
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)
                    ),
                    contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                  ),

                ),

                FlatButton(

                  child: Text(
                    "Forget Password",
                    style: TextStyle(color: Colors.purple,fontSize : 15),

                  ),

                  onPressed: (){
                    Navigator.of(context).pushNamed('/signuppage');
                  },
                ),
                SizedBox(height:0.0),
                RaisedButton(
                  textColor: Colors.white,
                  padding: EdgeInsets.all(0.0),
                  onPressed: (){
                    Navigator.of(context).pushNamed('/homepage');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(125, 10, 125, 10),
                    child: Text(
                        'Log In',
                        style: TextStyle(fontSize: 20,)
                    ),
                  ),
                ),
                SizedBox(height:10.0),
                Text("Don't Have an Account?"),
                SizedBox(height:0.0),
                FlatButton(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.purple,fontSize : 15),
                  ),
                  onPressed: (){
                    Navigator.of(context).pushNamed('/signuppage');
                  },
                ),
              ],
            ),),),
      ) ,
    );
  }
}