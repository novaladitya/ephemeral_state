import 'package:flutter/material.dart';
import 'package:ephemeral_state/productbox.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "RAM",
                description: "DDR4 8GB",
                price: 1000,
                image: "ram.jpg"),
            ProductBox(
                name: "Processor",
                description: "Core I5 Gen 9",
                price: 800,
                image: "proc.jpg"),
            ProductBox(
                name: "VGA",
                description: "GTX 1650 4GB",
                price: 2000,
                image: "vga.jpg"),
          ],
        ));
  }
}
