
import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          child:Padding(padding: EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)
                    ),
                    contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    labelText: 'Username',
                    prefixIcon: const Icon(Icons.person, color: Colors.blue),
                  ),
                ),
                SizedBox(height:10.0),
                TextField(
                  keyboardType: TextInputType.emailAddress,
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
                SizedBox(height:10.0),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  obscureText: true,
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)
                    ),
                    contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    labelText: 'Confirm Password',
                    prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                  ),
                ),
                SizedBox(height:10.0),
                RaisedButton(
                  textColor: Colors.white,
                  padding: EdgeInsets.all(0.0),
                  onPressed: (){
                    Navigator.of(context).pushNamed('/loginpage');
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
                    padding: EdgeInsets.fromLTRB(128, 10, 128, 10),
                    child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 15,)
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Text("OR",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue[600],letterSpacing: 2.0,fontSize: 17.0)),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:42.0,top: 6.0),
                      child: FlatButton(
                        onPressed: (){},
                        child: Text("FaceBook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.0)
                        ),
                        color: Colors.blueAccent,

                      ),
                    ),

                    SizedBox(width: 10.0),

                    Padding(
                      padding: const EdgeInsets.only(left:40.0,top: 6.0),
                        child: FlatButton(
                          child: Text("Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.0)),
                          color: Colors.red,
                          onPressed: (){},
                            ),

                        ),


                      ],
                    ),

              ],
            ),),),
      ) ,
    );

  }
}