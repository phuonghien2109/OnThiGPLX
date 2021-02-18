import 'package:flutter/material.dart';

class ThongTinUD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông Tin Ứng Dụng '),
        backgroundColor: Colors.grey[800],
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Sinh Viên Thực Hiện: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Lê Phương Hiền   MSSV: 0650080095',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ]),
        ),
      ),
    );
  }
}
