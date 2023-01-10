import 'package:flutter/material.dart';
import 'package:flutter_application/Pages/home_page.dart';
import 'package:flutter_application/Pages/login_page.dart';

void main() {
  runApp(MyApp()); //
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //bringVegetables(thaila: true);
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Login_Page(),
        "/home": (context) => HomePage(),
        "/logIn": (context) => Login_Page(),
      },
    );
  }

  // bringVegetables({required bool thaila, int rupees = 100}) {}
}
