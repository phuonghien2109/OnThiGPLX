import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CauHoi extends StatefulWidget {
  _DeThiState createState() => _DeThiState();
}

class _DeThiState extends State<CauHoi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('200 Câu Hỏi Ôn Thi GPLX Máy'),
          backgroundColor: Colors.grey[800],
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('Quiz').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Text(
                'Wait..',
                style: TextStyle(fontSize: 20),
              );
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
                                Text('Câu ${index + 1}:',
                                    style: TextStyle(fontSize: 20)),
                                Text(
                                  "${snapshot.data.docs[index]['question']}",
                                  style: TextStyle(fontSize: 20),
                                ),
                                if (snapshot.data.docs[index]['img'] != "null")
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Image.asset(
                                      //   "images/HinhQuiz/${snapshot.data.docs[index]['img']}.jpg",
                                      //   width: 250,
                                      // )
                                      Image.network(
                                          '${snapshot.data.docs[index]['img']}', width: 300,),
                                    ],
                                  ),
                                new Text(
                                  "A. ${snapshot.data.docs[index]['as1']}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: snapshot.data.docs[index]['as1'] ==
                                              snapshot.data.docs[index]['ans']
                                          ? Colors.red
                                          : Colors.black),
                                ),
                                new Text(
                                  "B. ${snapshot.data.docs[index]['as2']}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: snapshot.data.docs[index]['as2'] ==
                                              snapshot.data.docs[index]['ans']
                                          ? Colors.red
                                          : Colors.black),
                                ),
                                if (snapshot.data.docs[index]['as3'] != "null")
                                  new Text(
                                    "C. ${snapshot.data.docs[index]['as3']}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: snapshot.data.docs[index]
                                                    ['as3'] ==
                                                snapshot.data.docs[index]['ans']
                                            ? Colors.red
                                            : Colors.black),
                                  ),
                                if (snapshot.data.docs[index]['as4'] != "null")
                                  new Text(
                                    "D. ${snapshot.data.docs[index]['as4']}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: snapshot.data.docs[index]
                                                    ['as4'] ==
                                                snapshot.data.docs[index]['ans']
                                            ? Colors.red
                                            : Colors.black),
                                  ),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.all(5))
                                  ],
                                )
                              ],
                            ));
                          }))
                ],
              );
          },
        ));
  }
}
