import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application/models/catalog.dart';
import 'package:flutter_application/widgets/drawer.dart';
import 'package:flutter_application/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final int days = 30;
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));
    final catalogJSON =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeJSON = jsonDecode(catalogJSON);
    //print(decodeJSON);
    var productsData = decodeJSON["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child:
                (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
                    ? ListView.builder(
                        itemCount: CatalogModel.items?.length,
                        itemBuilder: (context, index) {
                          return ItemWidget(
                            item: CatalogModel.items![index],
                          );
                        },
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      )),
      ),
      drawer: MyDrawer(),
    );
  }
}
