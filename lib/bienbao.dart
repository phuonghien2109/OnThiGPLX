// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BienBao extends StatefulWidget {
  _DeThiState createState() => _DeThiState();
}

class _DeThiState extends State<BienBao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Biển Báo Giao Thông'),
          backgroundColor: Colors.grey[800],
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('BienBao').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Text('Wait..');
            else
              return Column(
                children: <Widget>[
                  Expanded(
                      child: ListView.builder(
                          itemCount: snapshot.data.docs.length,
                          itemBuilder: (context, index) {
                            return Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Card(
                                  child: Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 60,
                                        backgroundImage: AssetImage(
                                            "images/BienBao/${snapshot.data.docs[index]['img']}"),
                                      ),
                                      Expanded(
                                          child: Container(
                                        padding: EdgeInsets.all(5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                                snapshot.data.docs[index]
                                                    ['title'],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22)),
                                            Text(
                                              snapshot.data.docs[index]
                                                  ['subtitle'],
                                              style: TextStyle(fontSize: 16),
                                            )
                                          ],
                                        ),
                                      ))
                                    ],
                                  ),
                                ),
                              ],
                            ));
                          }))
                ],
              );
          },
        ));
  }
}
