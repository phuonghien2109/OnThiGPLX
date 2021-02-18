import 'package:flutter/material.dart';

class MailHoTro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mail Hỗ Trợ '),
        backgroundColor: Colors.grey[800],
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text(
              'Nếu bạn gặp vấn đề nào về phần mềm, vui lòng liên hệ qua hòm thư Email: OnThiGPLXMay@gmail.com.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Chúc các bạn đạt được kết quả thi tốt nhất!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ]),
        ),
      ),
    );
  }
}
