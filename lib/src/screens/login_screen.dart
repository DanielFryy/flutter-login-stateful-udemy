import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  Widget build(context) => Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
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
        validator: (value) {
          if (!value.contains('@')) {
            return 'Please enter a valid email';
          }
        },
        onSaved: (value) {
          email = value;
        },
      );

  Widget passwordFiedl() => TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Password',
        ),
        validator: (value) {
          if (value.length < 4) {
            return 'Password must be at least 4 characters';
          }
        },
        onSaved: (value) {
          password = value;
        },
      );

  Widget submitButton() => RaisedButton(
        color: Colors.blue,
        child: Text('Submit'),
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
            print('Time to post $email and $password to my API');
          }
        },
      );
}
