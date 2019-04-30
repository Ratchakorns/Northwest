import 'package:flutter/material.dart';

class Northwest3x3 extends StatefulWidget {
  Northwest3x3({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Northwest3x3State createState() => _Northwest3x3State();
}

class _Northwest3x3State extends State<Northwest3x3> {
  double _mattrix11 = 0,
      _mattrix12 = 0,
      _mattrix13 = 0,
      _mattrix21 = 0,
      _mattrix22 = 0,
      _mattrix23 = 0,
      _mattrix31 = 0,
      _mattrix32 = 0,
      _mattrix33 = 0;
  TextEditingController _supplyaController = new TextEditingController();
  TextEditingController _supplybController = new TextEditingController();
  TextEditingController _supplycController = new TextEditingController();
  TextEditingController _demandaController = new TextEditingController();
  TextEditingController _demandbController = new TextEditingController();
  TextEditingController _demandcController = new TextEditingController();

  void _incrementCounter() {
    double supplya = double.parse(_supplyaController.text);
    double supplyb = double.parse(_supplybController.text);
    double supplyc = double.parse(_supplycController.text);
    double demanda = double.parse(_demandaController.text);
    double demandb = double.parse(_demandbController.text);
    double demandc = double.parse(_demandcController.text);

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
          }
          else{
            _mattrix13=supplya-(_mattrix11+_mattrix12);
          }
        }
      });
    }
    print(_mattrix11);
    print(_mattrix12);
    print(_mattrix13);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text('Supply'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('A'),
                Text('B'),
                Text('C'),
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
                  ),
                ),
                Container(
                  width: 100,
                  child: TextField(
                    controller: _supplybController,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 100,
                  child: TextField(
                    controller: _supplycController,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text('Demand'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('a'),
                Text('b'),
                Text('c'),
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
                  ),
                ),
                Container(
                  width: 100,
                  child: TextField(
                    controller: _demandbController,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 100,
                  child: TextField(
                    controller: _demandcController,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            RaisedButton(
              child: Text('กดเพื่อ สร้างตาราง'),
              onPressed: _incrementCounter,
            )
          ],
        ),
      )),
    );
  }
}
