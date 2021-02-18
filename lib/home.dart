import 'package:app5/bienbao.dart';
import 'package:app5/mailhotro.dart';
import 'package:app5/productpage.dart';
import 'package:app5/quiz3.dart';
import 'package:app5/thongtinUD.dart';
import 'package:flutter/material.dart';
import 'cauhoi.dart';
import 'meothi.dart';
import 'product.dart';
import './huongdansd.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Ôn Thi GPLX Máy'),
        backgroundColor: Colors.grey[800],
      ),
      backgroundColor: Colors.grey[200],
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
        child: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: new Text('Ôn Thi GPLX Máy ',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.00,
                        color: Colors.white)),
                accountEmail: Text(
                  'OnThiGPLXMay@gmail.com',
                  style: TextStyle(fontSize: 10),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/logo3.png'),
                ),
                decoration: new BoxDecoration(color: Colors.grey[700]),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HuongdanSD(),
                    ),
                  );
                },
                leading: Icon(Icons.person),
                title: Text(
                  'Hướng dẫn sử dụng ',
                  // style: new TextStyle(fontSize: 18.00),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MailHoTro(),
                    ),
                  );
                },
                leading: Icon(Icons.mail),
                title: Text('Mail Hỗ Trợ'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThongTinUD(),
                    ),
                  );
                },
                leading: Icon(Icons.info),
                title: Text('Thông tin ứng dụng '),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          Product(
            title: "Đề Thi Ôn Tập Ngẫu Nhiên",
            image: "8dethi2.jpg",
            link: Quiz3(),
          ),
          Product(
            title: "200 Câu Hỏi Trắc Nghiệm",
            image: "logo2.png",
            link: CauHoi(),
          ),
          Product(
            title: "Mẹo Thi Điểm Cao",
            image: "meothi.jpg",
            link: Meothi(),
          ),
          Product(
            title: "Sa Hình",
            image: "sahinh1.jpg",
            link: ProductPage(),
          ),
          Product(
            title: "Biển Báo",
            image: "logobienbao.jpg",
            link: BienBao(),
          ),
        ],
      ),
    );
  }
}
