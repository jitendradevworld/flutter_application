import 'package:flutter/material.dart';

class Login_Page extends StatelessWidget {
  //const Login_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Text(
        "Log In Page",
        style: TextStyle(
          fontSize: 20,
          color: Colors.blue,
          fontWeight: FontWeight.w600,
        ),
      )),
    );
  }
}
