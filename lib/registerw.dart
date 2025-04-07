import 'package:flutter/material.dart';
import 'auth.dart';
import 'profilescreen.dart';

class RegisterWidget extends StatefulWidget {
  final VoidCallback toggleView;
  RegisterWidget({required this.toggleView});

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void register() async {
    final user = await AuthService().registerWithEmail(
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
      ).showSnackBar(SnackBar(content: Text("Registration failed")));
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
        ElevatedButton(onPressed: register, child: Text("Register")),
        TextButton(
          onPressed: widget.toggleView,
          child: Text("Have an account? Sign In"),
        ),
      ],
    );
  }
}
