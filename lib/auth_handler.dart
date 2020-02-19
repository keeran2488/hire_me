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
              
            ],
          ),
        )
      )
    );
  }
}