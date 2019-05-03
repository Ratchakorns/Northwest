import 'package:flutter/material.dart';
import 'package:northwest/function/GlobalState.dart';

class Dumbot3x3 extends StatefulWidget {
  @override
  _Dumbot3x3State createState() => _Dumbot3x3State();
}

class _Dumbot3x3State extends State<Dumbot3x3> {
  GlobalState _store = GlobalState.instance;

  int _mattrix11 = 0,
      _mattrix12 = 0,
      _mattrix13 = 0,
      _mattrix21 = 0,
      _mattrix22 = 0,
      _mattrix23 = 0,
      _mattrix31 = 0,
      _mattrix32 = 0,
      _mattrix33 = 0,
      _supplya,
      _supplyb,
      _supplyc,
      _demanda,
      _demandb,
      _demandc;

  Future<void> executeAfterBuild() async {
    int supplya = int.parse(_store.get('supplya'));
    int supplyb = int.parse(_store.get('supplyb'));
    int supplyc = int.parse(_store.get('supplyc'));
    int demanda = int.parse(_store.get('demanda'));
    int demandb = int.parse(_store.get('demandb'));
    int demandc = int.parse(_store.get('demandc'));
    _supplya = supplya;
    _supplyb = supplyb;
    _supplyc = supplyc;
    _demanda = demanda;
    _demandb = demandb;
    _demandc = demandc;

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
  }

  @override
  Widget build(BuildContext context) {
    executeAfterBuild();
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: new Text('3x3'),
      ),
      body: new Container(
        child: Column(
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
                          'Dummy',
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
            )
          ],
        ),
      ),
    );
  }
}
