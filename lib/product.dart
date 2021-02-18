import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

class Product extends StatelessWidget {
  Product({this.image, this.title, this.link});

  final String image;
  final String title;
  final Widget link;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => link,
            ),
          );
        },
        child: Container(
          height: 110,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            margin: EdgeInsets.all(8.00),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("images/" + image),
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(this.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 21))
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
        ));
  }
}
