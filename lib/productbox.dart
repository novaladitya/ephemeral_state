import 'package:flutter/material.dart';
import 'package:ephemeral_state/ratingbox.dart';

class ProductBox extends StatelessWidget {
  ProductBox({
    Key key,
    this.name,
    this.description,
    this.price,
    this.image,
  }) : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/" + image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text("Price: " + this.price.toString()),
                    RatingBox()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
