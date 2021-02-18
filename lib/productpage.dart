import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sa hình'),
        backgroundColor: Colors.grey[800],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(children: <Widget>[
            Image.asset("images/sahinh.jpg"),
          ]),
        ),
      ),
    );
  }
}
