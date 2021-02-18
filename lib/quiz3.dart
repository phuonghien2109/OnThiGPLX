import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './main.dart';

var finalScore = 0;
var questionNumber = 0;
var index = Random().nextInt(118);
var colorbtn = Colors.grey[400];
enum SingingCharacter { as1, as2, as3, as4, z }
var x = 'a';

class Quiz3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Quiz3State();
  }
}

class Quiz3State extends State<Quiz3> {
  SingingCharacter _character = SingingCharacter.z;

  @override
  Widget build(BuildContext context) {
    return new Material(
        child: Scaffold(
            appBar: new AppBar(
              title: Text('Đề Thi Ôn Tập Ngẫu Nhiên'),
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
                else {
                  return Column(
                    children: <Widget>[
                      Expanded(
                        child: SingleChildScrollView(
                          child: new Container(
                            margin: const EdgeInsets.all(10.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                new Container(
                                  child: new Row(
                                    children: <Widget>[
                                      new Text(
                                        "Câu ${questionNumber + 1}: ",
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    ],
                                  ),
                                ),
                                if (snapshot.data.docs[index]['img'] != "null")
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        '${snapshot.data.docs[index]['img']}',
                                        width: 300,
                                      )
                                    ],
                                  ),
                                new Text(
                                  snapshot.data.docs[index]['question'],
                                  style: new TextStyle(
                                    fontSize: 18.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                RadioListTile<SingingCharacter>(
                                  title: Text(
                                    "${snapshot.data.docs[index]['as1']}",
                                    style: new TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  value: SingingCharacter.as1,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _character = value;
                                      x = snapshot.data.docs[index]['as1'];
                                    });
                                  },
                                ),
                                RadioListTile<SingingCharacter>(
                                  title: Text(
                                    "${snapshot.data.docs[index]['as2']}",
                                    style: new TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  value: SingingCharacter.as2,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _character = value;
                                      x = snapshot.data.docs[index]['as2'];
                                    });
                                  },
                                ),
                                if (snapshot.data.docs[index]['as3'] != "null")
                                  RadioListTile<SingingCharacter>(
                                    title: Text(
                                      "${snapshot.data.docs[index]['as3']}",
                                      style: new TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    value: SingingCharacter.as3,
                                    groupValue: _character,
                                    onChanged: (SingingCharacter value) {
                                      setState(() {
                                        _character = value;
                                        x = snapshot.data.docs[index]['as3'];
                                      });
                                    },
                                  ),
                                if (snapshot.data.docs[index]['as4'] != "null")
                                  RadioListTile<SingingCharacter>(
                                    title: Text(
                                      "${snapshot.data.docs[index]['as4']}",
                                      style: new TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    value: SingingCharacter.as4,
                                    groupValue: _character,
                                    onChanged: (SingingCharacter value) {
                                      setState(() {
                                        _character = value;
                                        x = snapshot.data.docs[index]['as4'];
                                      });
                                    },
                                  ),
                                SizedBox(
                                  height: 5,
                                ),
                                new Container(
                                  alignment: Alignment.bottomCenter,
                                  child: new FlatButton(
                                    color: Colors.red,
                                    // onPressed: nextQuiz,
                                    onPressed: () {
                                      if (snapshot.data.docs[index]['ans'] ==
                                          x) {
                                        finalScore++;
                                      }
                                      print(finalScore);
                                      nextQuiz();
                                    },
                                    child: new Text(
                                      "Next",
                                      style: new TextStyle(
                                          fontSize: 20.0, color: Colors.white),
                                    ),
                                    minWidth: 240.0,
                                    height: 30.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                }
              },
            )));
  }

  void nextQuiz() {
    setState(() {
      questionNumber++;
      index = Random().nextInt(118);
      _character = SingingCharacter.z;
      if (questionNumber == 24) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => Summary(score: finalScore)));
      }
    });
  }
}

class Summary extends StatelessWidget {
  final int score;
  Summary({Key key, @required this.score}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Số câu trả lời đúng: $score",
                  style: new TextStyle(
                      fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                if (score > 20)
                  new Text(
                    "Bạn đã vượt qua bài thi!!!",
                    style: new TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.bold),
                  )
                else
                  new Text(
                    "Bạn không vượt qua bài thi!!!",
                    style: new TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                new Padding(padding: EdgeInsets.all(10.0)),
                new FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      questionNumber = 0;
                      finalScore = 0;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    child: new Text(
                      "Thoát",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ))
              ],
            ),
          ),
        ));
  }
}
