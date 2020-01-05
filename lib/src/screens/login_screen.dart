import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) => Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: <Widget>[
              emailField(),
              passwordFiedl(),
              submitButton(),
            ],
          ),
        ),
      );

  Widget emailField() => TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email Address',
          hintText: 'you@example.com',
        ),
      );

  Widget passwordFiedl() => TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Password',
        ),
      );

  Widget submitButton() => RaisedButton(
        child: Text('Submit'),
        onPressed: () {},
      );
}
