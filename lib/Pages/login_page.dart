import 'package:flutter/material.dart';
import 'package:flutter_application/utils/routes.dart';

class Login_Page extends StatefulWidget {
  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  String name = "";
  bool changeButton = false;
  //const Login_Page({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
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
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 80 : 150,
                    height: 40,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "LogIn",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        //borderRadius: BorderRadius.circular(8)
                        shape: changeButton
                            ? BoxShape.circle
                            : BoxShape.rectangle),
                  ),
                )
                // ElevatedButton(
                //     child: Text("LogIn"),
                //     style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                //     onPressed: () {
                //       // print("Hi Login Button");
                //       //  Navigator.push(context, route)
                //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                //     })
              ],
            ),
          )
        ],
      ),
    ));
  }
}
