import 'package:flutter/material.dart';
import 'auth.dart';
import 'profilescreen.dart';

class SignInWidget extends StatefulWidget {
  final VoidCallback toggleView;
  SignInWidget({required this.toggleView});

  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() async {
    final user = await AuthService().signInWithEmail(
      emailController.text,
      passwordController.text,
    );
    if (user != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => ProfileScreen()),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Sign-In failed")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: emailController,
          decoration: InputDecoration(labelText: "Email"),
        ),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(labelText: "Password"),
          obscureText: true,
        ),
        SizedBox(height: 20),
        ElevatedButton(onPressed: signIn, child: Text("Sign In")),
        TextButton(
          onPressed: widget.toggleView,
          child: Text("No account? Register"),
        ),
      ],
    );
  }
}
