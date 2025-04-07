import 'package:flutter/material.dart';
import 'signin.dart';
import 'registerw.dart';

class AuthenticationScreen extends StatefulWidget {
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  bool showSignIn = true;

  void toggleView() => setState(() => showSignIn = !showSignIn);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(showSignIn ? 'Sign In' : 'Register')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child:
            showSignIn
                ? SignInWidget(toggleView: toggleView)
                : RegisterWidget(toggleView: toggleView),
      ),
    );
  }
}
