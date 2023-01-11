import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Ram";
  // double pi = 3.14;
  bool isMale = true;
  num temp = 30.5;
  //var day = "Monday";
  //const pi = 3.14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days of Flutter... by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
