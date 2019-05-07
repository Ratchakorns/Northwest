import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

class Provider extends StatefulWidget {
  Provider({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProviderState createState() => _ProviderState();
}

class _ProviderState extends State<Provider> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.2, 0.4, 0.6, 0.8, 1.0],
            colors: [
              Color(0xFFFACDCD),
              Color(0xFFF8FACD),
              Color(0xFFD2FACD),
              Color(0xFFCDFAEC),
              Color(0xFFECCDFA),
            ],
          ),
        ),
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
              child: Container(
            child: SingleChildScrollView(child: Container(
              child: Padding(
                      padding: EdgeInsets.only(
                          left: 30, right: 30, bottom: 20, top: 40),
                      child: Column(
                        children: <Widget>[
                          GradientText("North-West Corner Rule",
                              gradient: LinearGradient(colors: [
                                Color(0xFFD16BA5),
                                Color(0xFF86A8E7),
                                Color(0xFF5fb7fb),
                              ]),
                              style: TextStyle(
                                  fontFamily: 'PromptBold', fontSize: 36)),
                          Text(
                            'เป็นวิธีการหาคำเฉลยเบื้องต้นที่ง่ายที่สุด วิธีการหาคำเฉลยจะเริ่มจากช่องมุมบนซ้ายที่สุดของตารางเสมอ และจะต้องจัดสรรปริมาณที่จะขนส่งไปตามเงื่อนไขของแถวนอนหรือแถวตั้งแรกเสียก่อน แล้วจึงย้ายไปพิจารณาแถวนอนและแถวตั้งถัดไป จนกระทั่งครบตามเงื่อนไขของแถวนอน และ แถวตั้ง',
                            style: TextStyle(fontSize: 16),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Card(
                                child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/2x2');
                              },
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const ListTile(
                                      title: Text(
                                        '2X2',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                      subtitle: Text(
                                          'สำหรับ Supply 2 แถว Demand 2 แถว'),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                          ),
                          Card(
                              child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/2x3');
                            },
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const ListTile(
                                    title: Text(
                                      '2X3',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    subtitle: Text(
                                        'สำหรับ Supply 2 แถว Demand 3 แถว'),
                                  ),
                                ],
                              ),
                            ),
                          )),
                          Card(
                              child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/3x3');
                            },
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const ListTile(
                                    title: Text(
                                      '3X3',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    subtitle: Text(
                                        'สำหรับ Supply 3 แถว Demand 3 แถว'),
                                  ),
                                ],
                              ),
                            ),
                          )),
                          Card(
                              child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/3x4');
                            },
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const ListTile(
                                    title: Text(
                                      '3X4',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    subtitle: Text(
                                        'สำหรับ Supply 3 แถว Demand 4 แถว'),
                                  ),
                                ],
                              ),
                            ),
                          )),
                          Card(
                              child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/4x4');
                            },
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const ListTile(
                                    title: Text(
                                      '4X4',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    subtitle: Text(
                                        'สำหรับ Supply 4 แถว Demand 4 แถว'),
                                  ),
                                ],
                              ),
                            ),
                          )),
                        ],
                      ))
            )),
          ))),
    ]);
  }
}
