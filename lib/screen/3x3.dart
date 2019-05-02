import 'package:flutter/material.dart';

class Northwest3x3 extends StatefulWidget {
  Northwest3x3({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Northwest3x3State createState() => _Northwest3x3State();
}

class _Northwest3x3State extends State<Northwest3x3> {
  int _default11 = 0,
      _default12 = 0,
      _default13 = 0,
      _default21 = 0,
      _default22 = 0,
      _default23 = 0,
      _default31 = 0,
      _default32 = 0,
      _default33 = 0,
      _total11 = 0,
      _total12 = 0,
      _total13 = 0,
      _total21 = 0,
      _total22 = 0,
      _total23 = 0,
      _total31 = 0,
      _total32 = 0,
      _total33 = 0,
      _mattrix11 = 0,
      _mattrix12 = 0,
      _mattrix13 = 0,
      _mattrix21 = 0,
      _mattrix22 = 0,
      _mattrix23 = 0,
      _mattrix31 = 0,
      _mattrix32 = 0,
      _mattrix33 = 0,
      total,
      _totalsupply,
      _totaldemand,
      _supplya,
      _supplyb,
      _supplyc,
      _demanda,
      _demandb,
      _demandc;

  TextEditingController _supplyaController = new TextEditingController();
  TextEditingController _supplybController = new TextEditingController();
  TextEditingController _supplycController = new TextEditingController();
  TextEditingController _demandaController = new TextEditingController();
  TextEditingController _demandbController = new TextEditingController();
  TextEditingController _demandcController = new TextEditingController();
  TextEditingController _total11Controller = new TextEditingController();
  TextEditingController _total12Controller = new TextEditingController();
  TextEditingController _total13Controller = new TextEditingController();
  TextEditingController _total21Controller = new TextEditingController();
  TextEditingController _total22Controller = new TextEditingController();
  TextEditingController _total23Controller = new TextEditingController();
  TextEditingController _total31Controller = new TextEditingController();
  TextEditingController _total32Controller = new TextEditingController();
  TextEditingController _total33Controller = new TextEditingController();

  bool isOpenTable = false, isOpenTotal = false, isCloseTable = true;

  void _incrementCounter() {
    int supplya = int.parse(_supplyaController.text);
    int supplyb = int.parse(_supplybController.text);
    int supplyc = int.parse(_supplycController.text);
    int demanda = int.parse(_demandaController.text);
    int demandb = int.parse(_demandbController.text);
    int demandc = int.parse(_demandcController.text);

    _supplya = supplya;
    _supplyb = supplyb;
    _supplyc = supplyc;
    _demanda = demanda;
    _demandb = demandb;
    _demandc = demandc;

    _totalsupply = supplya + supplyb + supplyc;
    _totaldemand = demanda + demandb + demandc;

    _mattrix11 = 0;
    _mattrix12 = 0;
    _mattrix13 = 0;
    _mattrix21 = 0;
    _mattrix22 = 0;
    _mattrix23 = 0;
    _mattrix31 = 0;
    _mattrix32 = 0;
    _mattrix33 = 0;

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
    if (_mattrix13 == 0) {
      setState(() {
        if (_mattrix11 + _mattrix12 == supplya) {
          _mattrix13 = 0;
        } else {
          if (supplya - (_mattrix11 + _mattrix12) > demandc) {
            _mattrix13 = demandc;
          } else {
            _mattrix13 = supplya - (_mattrix11 + _mattrix12);
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
    if (_mattrix23 == 0) {
      setState(() {
        if (_mattrix13 == 0) {
          if (supplyb - (_mattrix21 + _mattrix22) > demandc) {
            _mattrix23 = demandc;
          } else {
            _mattrix23 = supplyb - (_mattrix21 + _mattrix22);
          }
        } else {
          if (demandc - _mattrix13 > supplyb) {
            _mattrix23 = supplyb;
          } else {
            _mattrix23 = demandc - _mattrix13;
          }
        }
      });
    }
    if (_mattrix31 == 0) {
      setState(() {
        if (_mattrix11 + _mattrix21 == demanda) {
          _mattrix31 = 0;
        } else {
          if (demanda - (_mattrix11 + _mattrix21) > supplyc) {
            _mattrix31 = supplyc;
          } else {
            _mattrix31 = demanda - (_mattrix11 + _mattrix21);
          }
        }
      });
    }
    if (_mattrix32 == 0) {
      setState(() {
        if (_mattrix31 == 0) {
          if (demandb - (_mattrix12 + _mattrix22) > supplyc) {
            _mattrix32 = supplyc;
          } else {
            _mattrix32 = demandb - (_mattrix12 + _mattrix22);
          }
        } else {
          if (supplyc - _mattrix31 > demandb) {
            _mattrix32 = demandb;
          } else {
            _mattrix32 = supplyc - _mattrix31;
          }
        }
      });
    }
    if (_mattrix33 == 0) {
      setState(() {
        if (_mattrix32 == 0) {
          if (demandc - (_mattrix13 + _mattrix23) > supplyc) {
            _mattrix33 = supplyc;
          } else {
            _mattrix33 = demandc - (_mattrix13 + _mattrix23);
          }
        } else {
          if (supplyc - (_mattrix31 + _mattrix32) > demandc) {
            _mattrix33 = demandc;
          } else {
            _mattrix33 = supplyc - (_mattrix31 + _mattrix32);
          }
        }
      });
    }

    setState(() {
      isOpenTable = true;
      isCloseTable = false;
    });
  }

  void _incrementtotal() {
    int total11 = int.parse(_total11Controller.text);
    int total12 = int.parse(_total12Controller.text);
    int total13 = int.parse(_total13Controller.text);
    int total21 = int.parse(_total21Controller.text);
    int total22 = int.parse(_total22Controller.text);
    int total23 = int.parse(_total23Controller.text);
    int total31 = int.parse(_total31Controller.text);
    int total32 = int.parse(_total32Controller.text);
    int total33 = int.parse(_total33Controller.text);

    _default11 = total11;
    _default12 = total12;
    _default13 = total13;
    _default21 = total21;
    _default22 = total22;
    _default23 = total23;
    _default31 = total31;
    _default32 = total32;
    _default33 = total33;
    _total11 = total11 * _mattrix11;
    _total12 = total12 * _mattrix12;
    _total13 = total13 * _mattrix13;
    _total21 = total21 * _mattrix21;
    _total22 = total22 * _mattrix22;
    _total23 = total23 * _mattrix23;
    _total31 = total31 * _mattrix31;
    _total32 = total32 * _mattrix32;
    _total33 = total33 * _mattrix33;

    total = _total11 +
        _total12 +
        _total13 +
        _total21 +
        _total22 +
        _total23 +
        _total31 +
        _total32 +
        _total33;

    setState(() {
      isOpenTotal = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: new GestureDetector(
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
                  border: new Border.all(color: Colors.blueAccent, width: 3)),
              child: Column(
                children: <Widget>[
                  isCloseTable ? closetable() : Container(),
                  isOpenTable ? table() : Container()
                ],
              ),
            ),
          ))),
        ));
  }

  Widget closetable() {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'Supply',
                style: TextStyle(fontFamily: 'PromptBold'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'A',
                  style: TextStyle(fontFamily: 'PromptBold'),
                ),
                Text(
                  'B',
                  style: TextStyle(fontFamily: 'PromptBold'),
                ),
                Text(
                  'C',
                  style: TextStyle(fontFamily: 'PromptBold'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 100,
                  child: TextField(
                    controller: _supplyaController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  width: 100,
                  child: TextField(
                    controller: _supplybController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  width: 100,
                  child: TextField(
                    controller: _supplycController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'Demand',
                style: TextStyle(fontFamily: 'PromptBold'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'a',
                  style: TextStyle(fontFamily: 'PromptBold'),
                ),
                Text(
                  'b',
                  style: TextStyle(fontFamily: 'PromptBold'),
                ),
                Text(
                  'c',
                  style: TextStyle(fontFamily: 'PromptBold'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 100,
                  child: TextField(
                    controller: _demandaController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  width: 100,
                  child: TextField(
                    controller: _demandbController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  width: 100,
                  child: TextField(
                    controller: _demandcController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: RaisedButton(
                child: Text(
                  'กดเพื่อสร้างตาราง',
                  style: TextStyle(fontSize: 24),
                ),
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
                  'ผลลัพธ์ = $total',
                  style: TextStyle(fontFamily: 'PromptBold', fontSize: 24),
                ),
                Text(
                  "วิธีทำ = ($_mattrix11*$_default11) + ($_mattrix12*$_default12) + ($_mattrix13*$_default13) + ($_mattrix21*$_default21) + ($_mattrix22*$_default22) +($_mattrix23*$_default23) + ($_mattrix31*$_default31) + ($_mattrix32*$_default32) + ($_mattrix33*$_default33) = $total",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            )));
  }

  Widget table() {
    if (_totaldemand == _totalsupply) {
      return Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'ตาราง',
              style: TextStyle(fontFamily: 'PromptBold'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'Company',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
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
                      'c',
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
                    Text("$_mattrix11", textAlign: TextAlign.center),
                    Text("$_mattrix12", textAlign: TextAlign.center),
                    Text("$_mattrix13", textAlign: TextAlign.center),
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
                    Text("$_mattrix21", textAlign: TextAlign.center),
                    Text("$_mattrix22", textAlign: TextAlign.center),
                    Text("$_mattrix23", textAlign: TextAlign.center),
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
                        'C',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                    ),
                    Text("$_mattrix31", textAlign: TextAlign.center),
                    Text("$_mattrix32", textAlign: TextAlign.center),
                    Text("$_mattrix33", textAlign: TextAlign.center),
                    Text(
                      "$_supplyc",
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
                      "$_demandc",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      'supply',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                ]),
          ),
          Text('กรุณาใส่เพื่อคำนวณผลลัพธ์ทั้งหมด'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 100,
                child: TextField(
                  controller: _total11Controller,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                width: 100,
                child: TextField(
                  controller: _total12Controller,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                width: 100,
                child: TextField(
                  controller: _total13Controller,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 100,
                child: TextField(
                  controller: _total21Controller,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                width: 100,
                child: TextField(
                  controller: _total22Controller,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                width: 100,
                child: TextField(
                  controller: _total23Controller,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 100,
                child: TextField(
                  controller: _total31Controller,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                width: 100,
                child: TextField(
                  controller: _total32Controller,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                width: 100,
                child: TextField(
                  controller: _total33Controller,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: RaisedButton(
              child: Text(
                'กดเพื่อคำนวณผลลัพธ์',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: _incrementtotal,
            ),
          ),
          isOpenTotal ? total1() : Container()
        ],
      );
    } else if (_totalsupply > _totaldemand) {
      return Container(
        child: Text('supply > demand'),
      );
    } else {
      return Container(
        child: Text('demand > supply'),
      );
    }
  }
}
