import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

class Northwest2x2 extends StatefulWidget {
  Northwest2x2({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Northwest2x2State createState() => _Northwest2x2State();
}

class _Northwest2x2State extends State<Northwest2x2> {
  int _default11 = 0,
      _default12 = 0,
      _default21 = 0,
      _default22 = 0,
      _total11 = 0,
      _total12 = 0,
      _total21 = 0,
      _total22 = 0,
      _mattrix11 = 0,
      _mattrix12 = 0,
      _mattrix21 = 0,
      _mattrix22 = 0,
      total,
      _totalsupply,
      _totaldemand,
      _supplya,
      _supplyb,
      _demanda,
      _demandb,
      _dumdemanda,
      _dumdemandb,
      _dumdemandtotal,
      _dumsupplya,
      _dumsupplyb,
      _dumsupplytotal,
      _dumsupplytotalall,
      _dumdemandtotalall;

  TextEditingController _supplyaController = new TextEditingController();
  TextEditingController _supplybController = new TextEditingController();
  TextEditingController _demandaController = new TextEditingController();
  TextEditingController _demandbController = new TextEditingController();
  TextEditingController _total11Controller = new TextEditingController();
  TextEditingController _total12Controller = new TextEditingController();
  TextEditingController _total21Controller = new TextEditingController();
  TextEditingController _total22Controller = new TextEditingController();

  bool isOpenTable = false, isOpenTotal = false, isCloseTable = true;
  void _cleardata() {
    setState(() {
      isOpenTable = false;
      isCloseTable = true;
      isOpenTotal = false;
    });
  }

  void _reset() {
    setState(() {
      isOpenTable = false;
      isCloseTable = true;
      isOpenTotal = false;
      _supplyaController.clear();
      _supplybController.clear();
      _demandaController.clear();
      _demandbController.clear();
      _total11Controller.clear();
      _total12Controller.clear();
      _total21Controller.clear();
      _total22Controller.clear();
      total = null;
    });
  }

  void _incrementCounter() {
    int supplya = int.parse(_supplyaController.text);
    int supplyb = int.parse(_supplybController.text);
    int demanda = int.parse(_demandaController.text);
    int demandb = int.parse(_demandbController.text);
    int total11 = int.parse(_total11Controller.text);
    int total12 = int.parse(_total12Controller.text);
    int total21 = int.parse(_total21Controller.text);
    int total22 = int.parse(_total22Controller.text);
    _default11 = total11;
    _default12 = total12;
    _default21 = total21;
    _default22 = total22;
    _supplya = supplya;
    _supplyb = supplyb;
    _demanda = demanda;
    _demandb = demandb;
    _totalsupply = supplya + supplyb;
    _totaldemand = demanda + demandb;
    _mattrix11 = 0;
    _mattrix12 = 0;
    _mattrix21 = 0;
    _mattrix22 = 0;
    _dumdemanda = 0;
    _dumdemandb = 0;
    _dumdemandtotal = 0;
    _dumsupplya = 0;
    _dumsupplyb = 0;
    _dumsupplytotal = 0;

    if (_mattrix11 == 0) {
      setState(() {
        if (supplya < demanda) {
          _mattrix11 = supplya;
        } else {
          _mattrix11 = demanda;
        }
      });
    }
    if (_mattrix12 == 0) {
      setState(() {
        if (_mattrix11 == supplya) {
          _mattrix12 = 0;
        } else {
          if (supplya - _mattrix11 > demandb) {
            _mattrix12 = demandb;
          } else {
            _mattrix12 = supplya - _mattrix11;
          }
        }
      });
    }
    if (_mattrix21 == 0) {
      setState(() {
        if (_mattrix11 == demanda) {
          _mattrix21 = 0;
        } else {
          if (demanda - _mattrix11 > supplyb) {
            _mattrix21 = supplyb;
          } else {
            _mattrix21 = demanda - _mattrix11;
          }
        }
      });
    }
    if (_mattrix22 == 0) {
      setState(() {
        if (_mattrix21 == 0) {
          if (demandb - _mattrix12 > supplyb) {
            _mattrix22 = supplyb;
          } else {
            _mattrix22 = demandb - _mattrix12;
          }
        } else {
          if (supplyb - _mattrix21 > demandb) {
            _mattrix22 = demandb;
          } else {
            _mattrix22 = supplyb - _mattrix21;
          }
        }
      });
    }
    if (_dumdemanda == 0) {
      setState(() {
        if (demanda == _mattrix11 + _mattrix21) {
          _dumdemanda = 0;
        } else {
          _dumdemanda = (demanda - (_mattrix11 + _mattrix21));
        }
      });
    }
    if (_dumdemandb == 0) {
      setState(() {
        if (demandb == _mattrix12 + _mattrix22) {
          _dumdemandb = 0;
        } else {
          _dumdemandb = (demandb - (_mattrix12 + _mattrix22));
        }
      });
    }
    if (_dumdemandtotal == 0) {
      setState(() {
        _dumdemandtotal = _dumdemanda + _dumdemandb;
        _dumdemandtotalall = _totalsupply + _dumdemandtotal;
      });
    }
    if (_dumsupplya == 0) {
      setState(() {
        if (supplya == _mattrix11 + _mattrix12) {
          _dumsupplya = 0;
        } else {
          _dumsupplya = (supplya - (_mattrix11 + _mattrix12));
        }
      });
    }
    if (_dumsupplyb == 0) {
      setState(() {
        if (supplyb == _mattrix21 + _mattrix22) {
          _dumsupplyb = 0;
        } else {
          _dumsupplyb = (supplyb - (_mattrix21 + _mattrix22));
        }
      });
    }
    if (_dumsupplytotal == 0) {
      setState(() {
        _dumsupplytotal = _dumsupplya + _dumsupplyb;
        _dumsupplytotalall = _totaldemand + _dumsupplytotal;
      });
    }

    _total11 = total11 * _mattrix11;
    _total12 = total12 * _mattrix12;
    _total21 = total21 * _mattrix21;
    _total22 = total22 * _mattrix22;
    total = _total11 + _total12 + _total21 + _total22;

    setState(() {
      isOpenTable = true;
      isCloseTable = false;
      isOpenTotal = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.66, 1.0],
            colors: [
              Color(0xFFD16BA5),
              Color(0xFF86A8E7),
              Color(0xFF5FFBF1),
            ],
          ),
        ),
      ),
      Scaffold(
          appBar: AppBar(
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: new Text(
              "2X2",
              style: TextStyle(color: Colors.black, fontFamily: 'PromptBold'),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          backgroundColor: Colors.transparent,
          body: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: new Container(
                child: SingleChildScrollView(
                    child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: new Border.all(width: 3)),
                child: Column(
                  children: <Widget>[
                    isCloseTable ? closetable() : Container(),
                    isOpenTable ? table() : Container()
                  ],
                ),
              ),
            ))),
          )),
    ]);
  }

  Widget closetable() {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'วิธีการใช้งาน',
                style: TextStyle(fontFamily: 'PromptBold', fontSize: 24),
              ),
            ),
            Text(
              '1.กรอกความต้องการสินค้าใส่ลงในแถว Demand',
            ),
            Text(
              '2.กรอกกำลังการผลิตใส่ลงในแถว Supply',
            ),
            Text(
              '3.กรอกราคาต่อหน่วยลงในตาราง 2x2',
            ),
            Text(
              '4.กดปุ่ม "กดเพื่อสร้างตาราง" เพื่อดูผลลัพธ์',
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
              child: Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border: TableBorder.all(),
                  children: [
                    TableRow(children: [
                      Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            'Data',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'PromptBold'),
                          )),
                      Text(
                        'a',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                      Text(
                        'b',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                      Text(
                        'supply',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'A',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: 'PromptBold'),
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _total11Controller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _total12Controller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _supplyaController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'B',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: 'PromptBold'),
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _total21Controller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _total22Controller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _supplybController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'Demand',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: 'PromptBold'),
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _demandaController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _demandbController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Icon(Icons.not_interested)
                    ]),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 10),
              child: RaisedButton(
                color: Colors.black,
                child: GradientText("กดเพื่อสร้างตาราง",
                    gradient: LinearGradient(colors: [
                      Color(0xFFD16BA5),
                      Color(0xFF86A8E7),
                      Color(0xFF5FFBF1),
                    ]),
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center),
                onPressed: _incrementCounter,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget total1() {
    return Container(
        child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
            child: Column(
              children: <Widget>[
                Text(
                  "วิธีทำ",
                  style: TextStyle(fontSize: 24, fontFamily: 'PromptBold'),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '($_mattrix11*$_default11) + ($_mattrix12*$_default12) +  ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '($_mattrix21*$_default21) + ($_mattrix22*$_default22) = ',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Text(
                  'ผลลัพธ์ = $total',
                  style: TextStyle(fontFamily: 'PromptBold', fontSize: 24),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 150,
                      child: RaisedButton(
                        color: Colors.black,
                        child: GradientText("ย้อนกลับ",
                            gradient: LinearGradient(colors: [
                              Color(0xFFD16BA5),
                              Color(0xFF86A8E7),
                              Color(0xFF5FFBF1),
                            ]),
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.center),
                        onPressed: _cleardata,
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 150,
                      child: RaisedButton(
                        color: Colors.black,
                        child: GradientText("เริ่มต้นใหม่",
                            gradient: LinearGradient(colors: [
                              Color(0xFFD16BA5),
                              Color(0xFF86A8E7),
                              Color(0xFF5FFBF1),
                            ]),
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.center),
                        onPressed: _reset,
                      ),
                    )
                  ],
                )
              ],
            )));
  }

  Widget total2() {
    return Container(
        child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
            child: Column(
              children: <Widget>[
                Text(
                  "วิธีทำ",
                  style: TextStyle(fontSize: 24, fontFamily: 'PromptBold'),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '($_mattrix11*$_default11) + ($_mattrix12*$_default12) + ($_dumsupplya*0) +',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '($_mattrix21*$_default21) + ($_mattrix22*$_default22) + ($_dumsupplyb*0) =',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Text(
                  'ผลลัพธ์ = $total',
                  style: TextStyle(fontFamily: 'PromptBold', fontSize: 24),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 150,
                      child: RaisedButton(
                        color: Colors.black,
                        child: GradientText("ย้อนกลับ",
                            gradient: LinearGradient(colors: [
                              Color(0xFFD16BA5),
                              Color(0xFF86A8E7),
                              Color(0xFF5FFBF1),
                            ]),
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.center),
                        onPressed: _cleardata,
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 150,
                      child: RaisedButton(
                        color: Colors.black,
                        child: GradientText("เริ่มต้นใหม่",
                            gradient: LinearGradient(colors: [
                              Color(0xFFD16BA5),
                              Color(0xFF86A8E7),
                              Color(0xFF5FFBF1),
                            ]),
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.center),
                        onPressed: _reset,
                      ),
                    )
                  ],
                )
              ],
            )));
  }

  Widget total3() {
    return Container(
        child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
            child: Column(
              children: <Widget>[
                Text(
                  "วิธีทำ",
                  style: TextStyle(fontSize: 24, fontFamily: 'PromptBold'),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '($_mattrix11*$_default11) + ($_mattrix12*$_default12) + ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '($_mattrix21*$_default21) + ($_mattrix22*$_default22) + ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '($_dumdemanda*0) + ($_dumdemandb*0) =',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                Text(
                  'ผลลัพธ์ = $total',
                  style: TextStyle(fontFamily: 'PromptBold', fontSize: 24),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 150,
                      child: RaisedButton(
                        color: Colors.black,
                        child: GradientText("ย้อนกลับ",
                            gradient: LinearGradient(colors: [
                              Color(0xFFD16BA5),
                              Color(0xFF86A8E7),
                              Color(0xFF5FFBF1),
                            ]),
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.center),
                        onPressed: _cleardata,
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 150,
                      child: RaisedButton(
                        color: Colors.black,
                        child: GradientText("เริ่มต้นใหม่",
                            gradient: LinearGradient(colors: [
                              Color(0xFFD16BA5),
                              Color(0xFF86A8E7),
                              Color(0xFF5FFBF1),
                            ]),
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.center),
                        onPressed: _reset,
                      ),
                    )
                  ],
                )
              ],
            )));
  }

  Widget table() {
    if (_totaldemand == _totalsupply) {
      return Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Text(
              'ตาราง',
              style: TextStyle(fontFamily: 'PromptBold', fontSize: 24),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(),
                children: [
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            'Data',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'PromptBold'),
                          )),
                    ),
                    Text(
                      'a',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      'b',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      'supply',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'A',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "$_default11",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix11", textAlign: TextAlign.center),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "$_default12",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix12", textAlign: TextAlign.center),
                      ],
                    ),
                    Text(
                      "$_supplya",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'B',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "$_default21",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix21", textAlign: TextAlign.center),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "$_default22",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix22", textAlign: TextAlign.center),
                      ],
                    ),
                    Text(
                      "$_supplyb",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'Demand',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                    ),
                    Text(
                      "$_demanda",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      "$_demandb",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      '$_totaldemand',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                ]),
          ),
          isOpenTotal ? total1() : Container()
        ],
      );
    } else if (_totalsupply > _totaldemand) {
      return Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Text(
              'ตาราง',
              style: TextStyle(fontFamily: 'PromptBold', fontSize: 24),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(),
                children: [
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            'Data',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'PromptBold'),
                          )),
                    ),
                    Text(
                      'a',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      'b',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      'Dummy',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      'supply',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'A',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "$_default11",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix11", textAlign: TextAlign.center),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "$_default12",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix12", textAlign: TextAlign.center),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "0",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_dumsupplya", textAlign: TextAlign.center),
                      ],
                    ),
                    Text(
                      "$_supplya",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'B',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "$_default21",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix21", textAlign: TextAlign.center),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "$_default22",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix22", textAlign: TextAlign.center),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "0",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_dumsupplyb", textAlign: TextAlign.center),
                      ],
                    ),
                    Text(
                      "$_supplyb",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'Demand',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                    ),
                    Text(
                      "$_demanda",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      "$_demandb",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      '$_dumsupplytotal',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      '$_dumsupplytotalall',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                ]),
          ),
          isOpenTotal ? total2() : Container()
        ],
      );
    } else {
      return Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Text(
              'ตาราง',
              style: TextStyle(fontFamily: 'PromptBold', fontSize: 24),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(),
                children: [
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            'Data',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'PromptBold'),
                          )),
                    ),
                    Text(
                      'a',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      'b',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      'supply',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'A',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "$_default11",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix11", textAlign: TextAlign.center),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "$_default12",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix12", textAlign: TextAlign.center),
                      ],
                    ),
                    Text(
                      "$_supplya",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'B',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "$_default21",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix21", textAlign: TextAlign.center),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "$_default22",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix22", textAlign: TextAlign.center),
                      ],
                    ),
                    Text(
                      "$_supplyb",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'Dummy',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "0",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_dumdemanda", textAlign: TextAlign.center),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "0",
                                style: TextStyle(color: Color(0xFFD70000)),
                              ),
                            ),
                          ),
                        ),
                        Text("$_dumdemandb", textAlign: TextAlign.center),
                      ],
                    ),
                    Text(
                      '$_dumdemandtotal',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'Demand',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                    ),
                    Text(
                      "$_demanda",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      "$_demandb",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      '$_dumdemandtotalall',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                ]),
          ),
          isOpenTotal ? total3() : Container()
        ],
      );
    }
  }
}
