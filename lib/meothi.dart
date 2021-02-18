import 'package:flutter/material.dart';

class Meothi extends StatelessWidget {
  static final List<String> _listViewData = [
    "Câu khái niệm Phương tiện giao thông cơ giới đường bộ chọn Kể cả xe máy điện.",
    "Câu khái niệm Phương tiện giao thông thô sơ đường bộ chọn Kể cả xe đạp máy.",
    "Về nồng độ cồn, trong máu = 50, trong khí thở = 0.25 hoặc không có gì cả trong máu và khí thở.",
    "Bên ngoài khu dân cư thì tốc độ giới hạn là 80km/h < 3,5 tấn và 70km/h > 3,5 tấn"
  ];
  static final List<String> _listViewData1 = [
    "Đối ới các câu có biển báo hiệu lệnh được đặt trước ngã ba, ngã tư. Chọn câu 1 nếu câu hỏi 1 dòng, câu 3 nếu câu hỏi có 2 dòng.",
    "Biển báo cấm máy kéo thì không cấm ô tô tải và ngược lại",
    "Biển báo cấm rẽ trái thì cấm quay đầu và biển báo cấm quay đầu thì không cấm rẽ trái."
  ];
  static final List<String> _listViewData2 = [
    "Đối với câu hỏi liên quan đến việc điều khiển của CSGT, CSGT đưa thẳng tay lên thì các loại xe phải dừng lại, đưa 1 tay hoặc 2 tay giang ngang thì xe trước và xe sau phải dừng lại",
    "Đường giao nhau có vòng xuyến thì nhường bên trái, không có vòng xuyến thì nhường bên phải.",
    "Thấy xuất hiện Công an thì chọn câu số 3. Xe nào đã vào ngã tư thì xe đó có quyền ưu tiên đi trước cao nhất."
  ];
  static final List<String> _listViewData3 = [
    "Một số mẹo để đảm bảo đỗ 100%: ",
    "1. Tập trước vòng số 8 ở nhà:",
    " Phần thi thực hành trượt nhiều nhất là ở phần thi vòng số 8. Do đó, việc bạn đã biết đi xe máy thành thạo nhưng chưa tập qua vòng số 8 thì cũng dễ bị trượt. Bạn nên tập qua vòng số 8 càng nhirug lần càng tốt.",
    "2. Hôm lên thi thật sớm:",
    " Khi tập bằng xe của bạn thì do bạn đã quen đi với nó nên đi rất dễ. Nhưng xe của sân thi thì khác, nếu bạn không đến sớm tập với xe của sân thi thì cũng rất dễ bị trượt.",
    "Lưu ý: Lúc thi thực hành, bạn nên để xe ở số 3 mà đi. Bởi vì số 4 đi sẽ hơi yếu, nhưng số 1, 2 thì sẽ bị giật mạnh. Phần đường gồ ghề bạn nên để số 3 đi và nên đi chậm chậm để tránh bị ngã."
  ];
  static final List<String> _listViewData4 = [
    "Một số mẹo để đảm bảo đỗ 100%: ",
    "1. Tập trước vòng số 8 ở nhà:",
    " Phần thi thực hành trượt nhiều nhất là ở phần thi vòng số 8. Do đó, việc bạn đã biết đi xe máy thành thạo nhưng chưa tập qua vòng số 8 thì cũng dễ bị trượt. Bạn nên tập qua vòng số 8 càng nhirug lần càng tốt.",
    "2. Hôm lên thi thật sớm:",
    " Khi tập bằng xe của bạn thì do bạn đã quen đi với nó nên đi rất dễ. Nhưng xe của sân thi thì khác, nếu bạn không đến sớm tập với xe của sân thi thì cũng rất dễ bị trượt.",
    "Lưu ý: Lúc thi thực hành, bạn nên để xe ở số 3 mà đi. Bởi vì số 4 đi sẽ hơi yếu, nhưng số 1, 2 thì sẽ bị giật mạnh. Phần đường gồ ghề bạn nên để số 3 đi và nên đi chậm chậm để tránh bị ngã."
  ];
  static final List<String> _listViewData5 = [
    "Một số mẹo để đảm bảo đỗ 100%: ",
    "1. Tập trước vòng số 8 ở nhà:",
    " Phần thi thực hành trượt nhiều nhất là ở phần thi vòng số 8. Do đó, việc bạn đã biết đi xe máy thành thạo nhưng chưa tập qua vòng số 8 thì cũng dễ bị trượt. Bạn nên tập qua vòng số 8 càng nhirug lần càng tốt.",
    "2. Hôm lên thi thật sớm:",
    " Khi tập bằng xe của bạn thì do bạn đã quen đi với nó nên đi rất dễ. Nhưng xe của sân thi thì khác, nếu bạn không đến sớm tập với xe của sân thi thì cũng rất dễ bị trượt.",
    "Lưu ý: Lúc thi thực hành, bạn nên để xe ở số 3 mà đi. Bởi vì số 4 đi sẽ hơi yếu, nhưng số 1, 2 thì sẽ bị giật mạnh. Phần đường gồ ghề bạn nên để số 3 đi và nên đi chậm chậm để tránh bị ngã."
  ];
  static final List<String> _listViewData6 = [
    "Đúc kết được một số mẹo để đảm bảo đỗ 100%: ",
    "1. Tập trước vòng số 8 ở nhà:",
    " Phần thi thực hành trượt nhiều nhất là ở phần thi vòng số 8. Do đó, việc bạn đã biết đi xe máy thành thạo nhưng chưa tập qua vòng số 8 thì cũng dễ bị trượt. Bạn nên tập qua vòng số 8 càng nhirug lần càng tốt.",
    "2. Hôm lên thi thật sớm:",
    " Khi tập bằng xe của bạn thì do bạn đã quen đi với nó nên đi rất dễ. Nhưng xe của sân thi thì khác, nếu bạn không đến sớm tập với xe của sân thi thì cũng rất dễ bị trượt.",
    "Lưu ý: Lúc thi thực hành, bạn nên để xe ở số 3 mà đi. Bởi vì số 4 đi sẽ hơi yếu, nhưng số 1, 2 thì sẽ bị giật mạnh. Phần đường gồ ghề bạn nên để số 3 đi và nên đi chậm chậm để tránh bị ngã."
  ];
  static final List<String> _listViewData7 = [
    "Đúc kết được một số mẹo để đảm bảo đỗ 100%: ",
    "1. Tập trước vòng số 8 ở nhà:",
    " Phần thi thực hành trượt nhiều nhất là ở phần thi vòng số 8. Do đó, việc bạn đã biết đi xe máy thành thạo nhưng chưa tập qua vòng số 8 thì cũng dễ bị trượt. Bạn nên tập qua vòng số 8 càng nhirug lần càng tốt.",
    "2. Hôm lên thi thật sớm:",
    " Khi tập bằng xe của bạn thì do bạn đã quen đi với nó nên đi rất dễ. Nhưng xe của sân thi thì khác, nếu bạn không đến sớm tập với xe của sân thi thì cũng rất dễ bị trượt.",
    "Lưu ý: Lúc thi thực hành, bạn nên để xe ở số 3 mà đi. Bởi vì số 4 đi sẽ hơi yếu, nhưng số 1, 2 thì sẽ bị giật mạnh. Phần đường gồ ghề bạn nên để số 3 đi và nên đi chậm chậm để tránh bị ngã."
  ];
  List<ExpansionTile> _listOfExpansions = List<ExpansionTile>.generate(
      1,
      (i) => ExpansionTile(
            title: Text(
              "Khái niệm và quy tắc",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            children: _listViewData
                .map((data) => ListTile(
                      title: Text(
                        data,
                        style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                      ),
                    ))
                .toList(),
          ));
  List<ExpansionTile> _listOfExpansions1 = List<ExpansionTile>.generate(
      1,
      (i) => ExpansionTile(
            title: Text(
              "Hệ thống biển báo",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            children: _listViewData1
                .map((data) => ListTile(
                      title: Text(
                        data,
                        style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                      ),
                    ))
                .toList(),
          ));
  List<ExpansionTile> _listOfExpansions2 = List<ExpansionTile>.generate(
      1,
      (i) => ExpansionTile(
            title: Text(
              "Sa hình",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            children: _listViewData2
                .map((data) => ListTile(
                      title: Text(
                        data,
                        style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                      ),
                    ))
                .toList(),
          ));
  List<ExpansionTile> _listOfExpansions3 = List<ExpansionTile>.generate(
      1,
      (i) => ExpansionTile(
            title: Text(
              "Giới thiệu",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            children: _listViewData3
                .map((data) => ListTile(
                      title: Text(
                        data,
                        style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                      ),
                    ))
                .toList(),
          ));
  List<ExpansionTile> _listOfExpansions4 = List<ExpansionTile>.generate(
      1,
      (i) => ExpansionTile(
            title: Text(
              "Bài 1: Chạy theo vòng số 8",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            children: _listViewData4
                .map((data) => ListTile(
                      title: Text(
                        data,
                        style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                      ),
                    ))
                .toList(),
          ));
  List<ExpansionTile> _listOfExpansions5 = List<ExpansionTile>.generate(
      1,
      (i) => ExpansionTile(
            title: Text(
              "Bài 2: Đi vào đường hẹp",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            children: _listViewData5
                .map((data) => ListTile(
                      title: Text(
                        data,
                        style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                      ),
                    ))
                .toList(),
          ));
  List<ExpansionTile> _listOfExpansions6 = List<ExpansionTile>.generate(
      1,
      (i) => ExpansionTile(
            title: Text(
              "Bài 3: Chạy đường quanh co",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            children: _listViewData6
                .map((data) => ListTile(
                      title: Text(
                        data,
                        style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                      ),
                    ))
                .toList(),
          ));
  List<ExpansionTile> _listOfExpansions7 = List<ExpansionTile>.generate(
      1,
      (i) => ExpansionTile(
            title: Text(
              "Bài 4: Chạy đường quanh co",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            children: _listViewData7
                .map((data) => ListTile(
                      title: Text(
                        data,
                        style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                      ),
                    ))
                .toList(),
          ));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'LÝ THUYẾT',
                  ),
                  Tab(
                    text: 'THỰC HÀNH',
                  ),
                ],
                indicatorColor: Colors.white,
                indicatorWeight: 2,
              ),
              title: Text('Mẹo Thi Điểm Cao'),
              backgroundColor: Colors.grey[800],
            ),
            body: TabBarView(
              children: [
                ListView(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: InkWell(
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                              ListView(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: EdgeInsets.all(8.0),
                                children: _listOfExpansions
                                    .map((expansionTile) => expansionTile)
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: InkWell(
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                              ListView(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: EdgeInsets.all(8.0),
                                children: _listOfExpansions1
                                    .map((expansionTile) => expansionTile)
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: InkWell(
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                              ListView(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: EdgeInsets.all(8.0),
                                children: _listOfExpansions2
                                    .map((expansionTile) => expansionTile)
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: InkWell(
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                              ListView(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: EdgeInsets.all(8.0),
                                children: _listOfExpansions3
                                    .map((expansionTile) => expansionTile)
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: InkWell(
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                              ListView(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: EdgeInsets.all(8.0),
                                children: _listOfExpansions4
                                    .map((expansionTile) => expansionTile)
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: InkWell(
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                              ListView(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: EdgeInsets.all(8.0),
                                children: _listOfExpansions5
                                    .map((expansionTile) => expansionTile)
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: InkWell(
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                              ListView(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: EdgeInsets.all(8.0),
                                children: _listOfExpansions6
                                    .map((expansionTile) => expansionTile)
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: InkWell(
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                              ListView(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: EdgeInsets.all(8.0),
                                children: _listOfExpansions7
                                    .map((expansionTile) => expansionTile)
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
