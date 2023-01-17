import 'package:flutter/material.dart';
import 'package:flutter_application/models/catalog.dart';
import 'package:flutter_application/widgets/drawer.dart';
import 'package:flutter_application/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  //final int days = 30;
  // final String name = "Ram";
  // double pi = 3.14;
  //bool isMale = true;
  //num temp = 30.5;
  //var day = "Monday";
  //const pi = 3.14;

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            },
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
