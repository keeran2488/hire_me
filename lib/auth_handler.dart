import 'package:flutter/material.dart';

class AuthHandler extends StatefulWidget {
  @override
  _AuthHandlerState createState() => _AuthHandlerState();
}

class _AuthHandlerState extends State<AuthHandler> {
  String _email, _password;
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login form"),
      ),
      body: Container(
        child: Form(
          key: _loginFormKey,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.people),
                    hintText: 'Email',
                  ),
                  onSaved: (value){
                    _email = value;
                  },
                  validator: (value){
                    if(value.isEmpty){
                      return 'Please enter your email address.';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    hintText: 'Password',
                  ),
                  onSaved: (value){
                    _password = value;
                  },
                  validator: (value){
                    if(value.isEmpty){
                      return 'Please enter your password.';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: (){

                  },
                  child: Text("Sign up"),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}