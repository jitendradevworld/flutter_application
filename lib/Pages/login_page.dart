import 'package:flutter/material.dart';
import 'package:flutter_application/utils/routes.dart';

class Login_Page extends StatefulWidget {
  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  //const Login_Page({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Image.asset(
              "assets/images/hey.png",
              fit: BoxFit.cover,
              //height: 900,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter UserName", labelText: "UserName"),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Username can't be empty";
                      }

                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "Password can't be empty";
                        } else if (value!.length < 6) {
                          return "Password length should be 6.";
                        }

                        return null;
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  Material(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(changeButton ? 75 : 8),
                    //shape: changeButton?BoxShape.circle : BoxShape.rectangle,
                    child: InkWell(
                      splashColor: Colors.red,
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 40,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}






/*
 // ElevatedButton(
                  //     child: Text("LogIn"),
                  //     style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                  //     onPressed: () {
                  //       // print("Hi Login Button");
                  //       //  Navigator.push(context, route)
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     })
*/


