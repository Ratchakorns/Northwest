import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

class Northwest4x4 extends StatefulWidget {
  Northwest4x4({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Northwest4x4State createState() => _Northwest4x4State();
}

class _Northwest4x4State extends State<Northwest4x4> {
  int _default11,
      _default12,
      _default13,
      _default14,
      _default21,
      _default22,
      _default23,
      _default24,
      _default31,
      _default32,
      _default33,
      _default34,
      _default41,
      _default42,
      _default43,
      _default44,
      _total11,
      _total12,
      _total13,
      _total14,
      _total21,
      _total22,
      _total23,
      _total24,
      _total31,
      _total32,
      _total33,
      _total34,
      _total41,
      _total42,
      _total43,
      _total44,
      _mattrix11 = 0,
      _mattrix12 = 0,
      _mattrix13 = 0,
      _mattrix14 = 0,
      _mattrix21 = 0,
      _mattrix22 = 0,
      _mattrix23 = 0,
      _mattrix24 = 0,
      _mattrix31 = 0,
      _mattrix32 = 0,
      _mattrix33 = 0,
      _mattrix34 = 0,
      _mattrix41 = 0,
      _mattrix42 = 0,
      _mattrix43 = 0,
      _mattrix44 = 0,
      total,
      _totalsupply,
      _totaldemand,
      _supplya,
      _supplyb,
      _supplyc,
      _supplyd,
      _demanda,
      _demandb,
      _demandc,
      _demandd,
      _dumdemanda,
      _dumdemandb,
      _dumdemandc,
      _dumdemandd,
      _dumdemandtotal,
      _dumsupplya,
      _dumsupplyb,
      _dumsupplyc,
      _dumsupplyd,
      _dumsupplytotal,
      _dumsupplytotalall,
      _dumdemandtotalall;

  TextEditingController _supplyaController = new TextEditingController();
  TextEditingController _supplybController = new TextEditingController();
  TextEditingController _supplycController = new TextEditingController();
  TextEditingController _supplydController = new TextEditingController();
  TextEditingController _demandaController = new TextEditingController();
  TextEditingController _demandbController = new TextEditingController();
  TextEditingController _demandcController = new TextEditingController();
  TextEditingController _demanddController = new TextEditingController();
  TextEditingController _total11Controller = new TextEditingController();
  TextEditingController _total12Controller = new TextEditingController();
  TextEditingController _total13Controller = new TextEditingController();
  TextEditingController _total14Controller = new TextEditingController();
  TextEditingController _total21Controller = new TextEditingController();
  TextEditingController _total22Controller = new TextEditingController();
  TextEditingController _total23Controller = new TextEditingController();
  TextEditingController _total24Controller = new TextEditingController();
  TextEditingController _total31Controller = new TextEditingController();
  TextEditingController _total32Controller = new TextEditingController();
  TextEditingController _total33Controller = new TextEditingController();
  TextEditingController _total34Controller = new TextEditingController();
  TextEditingController _total41Controller = new TextEditingController();
  TextEditingController _total42Controller = new TextEditingController();
  TextEditingController _total43Controller = new TextEditingController();
  TextEditingController _total44Controller = new TextEditingController();

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
      _supplyaController.clear();
      _supplybController.clear();
      _supplycController.clear();
      _supplydController.clear();
      _demandaController.clear();
      _demandbController.clear();
      _demandcController.clear();
      _demanddController.clear();
      _total11Controller.clear();
      _total12Controller.clear();
      _total13Controller.clear();
      _total14Controller.clear();
      _total21Controller.clear();
      _total22Controller.clear();
      _total23Controller.clear();
      _total24Controller.clear();
      _total31Controller.clear();
      _total32Controller.clear();
      _total33Controller.clear();
      _total34Controller.clear();
      _total41Controller.clear();
      _total42Controller.clear();
      _total43Controller.clear();
      _total44Controller.clear();
      total = null;
    });
  }

  void _incrementCounter() {
    int supplya = int.parse(_supplyaController.text);
    int supplyb = int.parse(_supplybController.text);
    int supplyc = int.parse(_supplycController.text);
    int supplyd = int.parse(_supplydController.text);
    int demanda = int.parse(_demandaController.text);
    int demandb = int.parse(_demandbController.text);
    int demandc = int.parse(_demandcController.text);
    int demandd = int.parse(_demanddController.text);
    int total11 = int.parse(_total11Controller.text);
    int total12 = int.parse(_total12Controller.text);
    int total13 = int.parse(_total13Controller.text);
    int total14 = int.parse(_total14Controller.text);
    int total21 = int.parse(_total21Controller.text);
    int total22 = int.parse(_total22Controller.text);
    int total23 = int.parse(_total23Controller.text);
    int total24 = int.parse(_total24Controller.text);
    int total31 = int.parse(_total31Controller.text);
    int total32 = int.parse(_total32Controller.text);
    int total33 = int.parse(_total33Controller.text);
    int total34 = int.parse(_total34Controller.text);
    int total41 = int.parse(_total41Controller.text);
    int total42 = int.parse(_total42Controller.text);
    int total43 = int.parse(_total43Controller.text);
    int total44 = int.parse(_total44Controller.text);

    _default11 = total11;
    _default12 = total12;
    _default13 = total13;
    _default14 = total14;
    _default21 = total21;
    _default22 = total22;
    _default23 = total23;
    _default24 = total24;
    _default31 = total31;
    _default32 = total32;
    _default33 = total33;
    _default34 = total34;
    _default41 = total41;
    _default42 = total42;
    _default43 = total43;
    _default44 = total44;

    _supplya = supplya;
    _supplyb = supplyb;
    _supplyc = supplyc;
    _supplyd = supplyd;
    _demanda = demanda;
    _demandb = demandb;
    _demandc = demandc;
    _demandd = demandd;

    _totalsupply = supplya + supplyb + supplyc + supplyd;
    _totaldemand = demanda + demandb + demandc + demandd;

    _mattrix11 = 0;
    _mattrix12 = 0;
    _mattrix13 = 0;
    _mattrix14 = 0;
    _mattrix21 = 0;
    _mattrix22 = 0;
    _mattrix23 = 0;
    _mattrix24 = 0;
    _mattrix31 = 0;
    _mattrix32 = 0;
    _mattrix33 = 0;
    _mattrix34 = 0;
    _mattrix41 = 0;
    _mattrix42 = 0;
    _mattrix43 = 0;
    _mattrix44 = 0;
    _dumdemanda = 0;
    _dumdemandb = 0;
    _dumdemandc = 0;
    _dumdemandd = 0;
    _dumdemandtotal = 0;
    _dumsupplya = 0;
    _dumsupplyb = 0;
    _dumsupplyc = 0;
    _dumsupplyd = 0;
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
    if (_mattrix14 == 0) {
      setState(() {
        if (_mattrix11 + _mattrix12 + _mattrix13 == supplya) {
          _mattrix14 = 0;
        } else {
          if (supplya - (_mattrix11 + _mattrix12 + _mattrix13) > demandd) {
            _mattrix14 = demandd;
          } else {
            _mattrix14 = supplya - (_mattrix11 + _mattrix12 + _mattrix13);
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
    if (_mattrix24 == 0) {
      setState(() {
        if (_mattrix14 == 0) {
          if (supplyb - (_mattrix21 + _mattrix22 + _mattrix23) > demandd) {
            _mattrix24 = demandd;
          } else {
            _mattrix24 = supplyb - (_mattrix21 + _mattrix22 + _mattrix23);
          }
        } else {
          if (demandd - _mattrix14 > supplyb) {
            _mattrix24 = supplyb;
          } else {
            _mattrix24 = demandd - _mattrix14;
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
        if (_mattrix31 + _mattrix32 == 0) {
          //เพิ่ม
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
    if (_mattrix34 == 0) {
      setState(() {
        if (_mattrix14 + _mattrix24 == 0) {
          //เพิ่ม
          if (supplyc - (_mattrix31 + _mattrix32 + _mattrix33) > demandd) {
            _mattrix34 = demandd;
          } else {
            _mattrix34 = supplyc - (_mattrix31 + _mattrix32 + _mattrix33);
          }
        } else {
          if (demandd - (_mattrix14 + _mattrix24) > supplyc) {
            _mattrix34 = supplyc;
          } else {
            _mattrix34 = demandd - (_mattrix14 + _mattrix24);
          }
        }
      });
    }
    if (_mattrix41 == 0) {
      setState(() {
        if (_mattrix11 + _mattrix21 + _mattrix31 == demanda) {
          _mattrix41 = 0;
        } else {
          if (demanda - (_mattrix11 + _mattrix21 + _mattrix31) > supplyd) {
            _mattrix41 = supplyd;
          } else {
            _mattrix41 = demanda - (_mattrix11 + _mattrix21 + _mattrix31);
          }
        }
      });
    }
    if (_mattrix42 == 0) {
      setState(() {
        if (_mattrix41 == 0) {
          if (demandb - (_mattrix12 + _mattrix22 + _mattrix32) > supplyd) {
            _mattrix42 = supplyd;
          } else {
            _mattrix42 = demandb - (_mattrix12 + _mattrix22 + _mattrix32);
          }
        } else {
          if (supplyd - _mattrix41 > demandb) {
            _mattrix42 = demandb;
          } else {
            _mattrix42 = supplyd - _mattrix41;
          }
        }
      });
    }
    if (_mattrix43 == 0) {
      setState(() {
        if (_mattrix41 + _mattrix42 == 0) {
          //เพิ่ม
          if (demandc - (_mattrix13 + _mattrix23 + _mattrix33) > supplyd) {
            _mattrix43 = supplyd;
          } else {
            _mattrix43 = demandc - (_mattrix13 + _mattrix23 + _mattrix33);
          }
        } else {
          if (supplyd - (_mattrix41 + _mattrix42) > demandc) {
            _mattrix43 = demandc;
          } else {
            _mattrix43 = supplyd - (_mattrix41 + _mattrix42);
          }
        }
      });
    }
    if (_mattrix44 == 0) {
      setState(() {
        if (_mattrix14 + _mattrix24 + _mattrix34 == 0) {
          //เพิ่ม
          if (supplyd - (_mattrix41 + _mattrix42 + _mattrix43) > demandd) {
            _mattrix44 = demandd;
          } else {
            _mattrix44 = supplyd - (_mattrix41 + _mattrix42 + _mattrix43);
          }
        } else {
          if (demandd - (_mattrix14 + _mattrix24 + _mattrix34) > supplyd) {
            _mattrix44 = supplyd;
          } else {
            _mattrix44 = demandd - (_mattrix14 + _mattrix24 + _mattrix34);
          }
        }
      });
    }
    if (_dumdemanda == 0) {
      setState(() {
        if (demanda == _mattrix11 + _mattrix21 + _mattrix31 + _mattrix41) {
          _dumdemanda = 0;
        } else {
          _dumdemanda =
              (demanda - (_mattrix11 + _mattrix21 + _mattrix31 + _mattrix41));
        }
      });
    }
    if (_dumdemandb == 0) {
      setState(() {
        if (demandb == _mattrix12 + _mattrix22 + _mattrix32 + _mattrix42) {
          _dumdemandb = 0;
        } else {
          _dumdemandb =
              (demandb - (_mattrix12 + _mattrix22 + _mattrix32 + _mattrix42));
        }
      });
    }
    if (_dumdemandc == 0) {
      setState(() {
        if (demandc == _mattrix13 + _mattrix23 + _mattrix33 + _mattrix43) {
          _dumdemandc = 0;
        } else {
          _dumdemandc =
              (demandc - (_mattrix13 + _mattrix23 + _mattrix33 + _mattrix43));
        }
      });
    }
    if (_dumdemandd == 0) {
      setState(() {
        if (demandd == _mattrix14 + _mattrix24 + _mattrix34 + _mattrix44) {
          _dumdemandd = 0;
        } else {
          _dumdemandd =
              (demandd - (_mattrix14 + _mattrix24 + _mattrix34 + _mattrix44));
        }
      });
    }
    if (_dumdemandtotal == 0) {
      setState(() {
        _dumdemandtotal = _dumdemanda + _dumdemandb + _dumdemandc + _dumdemandd;
        _dumdemandtotalall = _totalsupply + _dumdemandtotal;
      });
    }
    if (_dumsupplya == 0) {
      setState(() {
        if (supplya == _mattrix11 + _mattrix12 + _mattrix13 + _mattrix14) {
          _dumsupplya = 0;
        } else {
          _dumsupplya =
              (supplya - (_mattrix11 + _mattrix12 + _mattrix13 + _mattrix14));
        }
      });
    }
    if (_dumsupplyb == 0) {
      setState(() {
        if (supplyb == _mattrix21 + _mattrix22 + _mattrix23 + _mattrix24) {
          _dumsupplyb = 0;
        } else {
          _dumsupplyb =
              (supplyb - (_mattrix21 + _mattrix22 + _mattrix23 + _mattrix24));
        }
      });
    }
    if (_dumsupplyc == 0) {
      setState(() {
        if (supplyc == _mattrix31 + _mattrix32 + _mattrix33 + _mattrix34) {
          _dumsupplyc = 0;
        } else {
          _dumsupplyc =
              (supplyc - (_mattrix31 + _mattrix32 + _mattrix33 + _mattrix34));
        }
      });
    }
    if (_dumsupplyd == 0) {
      setState(() {
        if (supplyd == _mattrix41 + _mattrix42 + _mattrix43 + _mattrix44) {
          _dumsupplyd = 0;
        } else {
          _dumsupplyd =
              (supplyd - (_mattrix41 + _mattrix42 + _mattrix43 + _mattrix44));
        }
      });
    }
    if (_dumsupplytotal == 0) {
      setState(() {
        _dumsupplytotal = _dumsupplya + _dumsupplyb + _dumsupplyc + _dumsupplyd;
        _dumsupplytotalall = _totaldemand + _dumsupplytotal;
      });
    }

    _total11 = total11 * _mattrix11;
    _total12 = total12 * _mattrix12;
    _total13 = total13 * _mattrix13;
    _total14 = total14 * _mattrix14;
    _total21 = total21 * _mattrix21;
    _total22 = total22 * _mattrix22;
    _total23 = total23 * _mattrix23;
    _total24 = total24 * _mattrix24;
    _total31 = total31 * _mattrix31;
    _total32 = total32 * _mattrix32;
    _total33 = total33 * _mattrix33;
    _total34 = total34 * _mattrix34;
    _total41 = total41 * _mattrix41;
    _total42 = total42 * _mattrix42;
    _total43 = total43 * _mattrix43;
    _total44 = total44 * _mattrix44;
    total = _total11 +
        _total12 +
        _total13 +
        _total14 +
        _total21 +
        _total22 +
        _total23 +
        _total24 +
        _total31 +
        _total32 +
        _total33 +
        _total34 +
        _total41 +
        _total42 +
        _total43 +
        _total44;

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
              "4X4",
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
                    border: new Border.all(
                        color: Colors.black, width: 3)),
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
              '3.กรอกราคาต่อหน่วยลงในตาราง 4x4',
            ),
            Text(
              '4.กดปุ่ม "กดเพื่อสร้างตาราง" เพื่อดูผลลัพธ์',
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
              child: Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border:
                      TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(children: [
                      Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Icon(Icons.star)),
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
                        'd',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                      Text(
                        'Sup',
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
                          controller: _total13Controller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _total14Controller,
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
                          controller: _total23Controller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _total24Controller,
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
                          'C',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: 'PromptBold'),
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _total31Controller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _total32Controller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _total33Controller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _total34Controller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _supplycController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'D',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: 'PromptBold'),
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _total41Controller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _total42Controller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _total43Controller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _total44Controller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _supplydController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'De',
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
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _demandcController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width: 100,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _demanddController,
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
                      '($_mattrix11*$_default11) + ($_mattrix12*$_default12) + ($_mattrix13*$_default13) + ($_mattrix14*$_default14) + ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '($_mattrix21*$_default21) + ($_mattrix22*$_default22) + ($_mattrix23*$_default23) + ($_mattrix24*$_default24) + ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '($_mattrix31*$_default31) + ($_mattrix32*$_default32) + ($_mattrix33*$_default33) + ($_mattrix34*$_default34) +',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '($_mattrix41*$_default41) + ($_mattrix42*$_default42) + ($_mattrix43*$_default43) + ($_mattrix44*$_default44) =',
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
                      '($_mattrix11*$_default11) + ($_mattrix12*$_default12) + ($_mattrix13*$_default13)  + ($_mattrix14*$_default14) + ($_dumsupplya*0) +',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '($_mattrix21*$_default21) + ($_mattrix22*$_default22) + ($_mattrix23*$_default23)  + ($_mattrix24*$_default24) + ($_dumsupplyb*0) +',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '($_mattrix31*$_default31) + ($_mattrix32*$_default32) + ($_mattrix33*$_default33)  + ($_mattrix34*$_default34) + ($_dumsupplyc*0) +',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '($_mattrix41*$_default41) + ($_mattrix42*$_default42) + ($_mattrix43*$_default43)  + ($_mattrix44*$_default44) + ($_dumsupplyd*0) =',
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
                      '($_mattrix11*$_default11) + ($_mattrix12*$_default12) + ($_mattrix13*$_default13) + ($_mattrix14*$_default14) + ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '($_mattrix21*$_default21) + ($_mattrix22*$_default22) + ($_mattrix23*$_default23) + ($_mattrix24*$_default24) + ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '($_mattrix31*$_default31) + ($_mattrix32*$_default32) + ($_mattrix33*$_default33) + ($_mattrix34*$_default34) + ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '($_mattrix41*$_default41) + ($_mattrix42*$_default42) + ($_mattrix43*$_default43) + ($_mattrix44*$_default44) + ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '($_dumdemanda*0) + ($_dumdemandb*0) + ($_dumdemandc*0) + ($_dumdemandd*0) =',
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
                border:
                    TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Icon(Icons.star)),
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
                      'd',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      'Sup',
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
                                style: TextStyle(color: Colors.red),
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
                                style: TextStyle(color: Colors.red),
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
                                  "$_default13",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            )),
                        Text("$_mattrix13", textAlign: TextAlign.center),
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
                                  "$_default14",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            )),
                        Text("$_mattrix14", textAlign: TextAlign.center),
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
                                style: TextStyle(color: Colors.red),
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
                                style: TextStyle(color: Colors.red),
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
                                "$_default23",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix23", textAlign: TextAlign.center),
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
                                "$_default24",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix24", textAlign: TextAlign.center),
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
                        'C',
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
                                "$_default31",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix31", textAlign: TextAlign.center),
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
                                "$_default32",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix32", textAlign: TextAlign.center),
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
                                "$_default33",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix33", textAlign: TextAlign.center),
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
                                "$_default34",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix34", textAlign: TextAlign.center),
                      ],
                    ),
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
                        'D',
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
                                "$_default41",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix41", textAlign: TextAlign.center),
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
                                "$_default42",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix42", textAlign: TextAlign.center),
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
                                "$_default43",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix43", textAlign: TextAlign.center),
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
                                "$_default44",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix44", textAlign: TextAlign.center),
                      ],
                    ),
                    Text(
                      "$_supplyd",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'De',
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
                      "$_demandd",
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
      return Container(
        child: Column(
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
                  defaultColumnWidth: FixedColumnWidth(45),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border:
                      TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(children: [
                      Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Icon(Icons.star)),
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
                        'd',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                      Text(
                        'Dum',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                      Text(
                        'Sup',
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
                                  style: TextStyle(color: Colors.red),
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
                                  style: TextStyle(color: Colors.red),
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
                                    "$_default13",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              )),
                          Text("$_mattrix13", textAlign: TextAlign.center),
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
                                    "$_default14",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              )),
                          Text("$_mattrix14", textAlign: TextAlign.center),
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
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Text("$_dumsupplya",
                              style: TextStyle(fontFamily: 'PromptBold'),
                              textAlign: TextAlign.center),
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
                                  style: TextStyle(color: Colors.red),
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
                                  style: TextStyle(color: Colors.red),
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
                                  "$_default23",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Text("$_mattrix23", textAlign: TextAlign.center),
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
                                  "$_default24",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Text("$_mattrix24", textAlign: TextAlign.center),
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
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Text("$_dumsupplyb",
                              style: TextStyle(fontFamily: 'PromptBold'),
                              textAlign: TextAlign.center),
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
                          'C',
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
                                  "$_default31",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Text("$_mattrix31", textAlign: TextAlign.center),
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
                                  "$_default32",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Text("$_mattrix32", textAlign: TextAlign.center),
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
                                  "$_default33",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Text("$_mattrix33", textAlign: TextAlign.center),
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
                                  "$_default34",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Text("$_mattrix34", textAlign: TextAlign.center),
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
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "$_dumsupplyc",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'PromptBold'),
                          ),
                        ],
                      ),
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
                          'D',
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
                                  "$_default41",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Text("$_mattrix41", textAlign: TextAlign.center),
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
                                  "$_default42",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Text("$_mattrix42", textAlign: TextAlign.center),
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
                                  "$_default43",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Text("$_mattrix43", textAlign: TextAlign.center),
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
                                  "$_default44",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Text("$_mattrix44", textAlign: TextAlign.center),
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
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "$_dumsupplyd",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'PromptBold'),
                          ),
                        ],
                      ),
                      Text(
                        "$_supplyd",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'PromptBold'),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'De',
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
                        "$_demandd",
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
        ),
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
                border:
                    TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Icon(Icons.star)),
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
                      'd',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                    Text(
                      'Sup',
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
                                style: TextStyle(color: Colors.red),
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
                                style: TextStyle(color: Colors.red),
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
                                  "$_default13",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            )),
                        Text("$_mattrix13", textAlign: TextAlign.center),
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
                                  "$_default14",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            )),
                        Text("$_mattrix14", textAlign: TextAlign.center),
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
                                style: TextStyle(color: Colors.red),
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
                                style: TextStyle(color: Colors.red),
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
                                "$_default23",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix23", textAlign: TextAlign.center),
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
                                "$_default24",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix24", textAlign: TextAlign.center),
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
                        'C',
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
                                "$_default31",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix31", textAlign: TextAlign.center),
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
                                "$_default32",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix32", textAlign: TextAlign.center),
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
                                "$_default33",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix33", textAlign: TextAlign.center),
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
                                "$_default34",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix34", textAlign: TextAlign.center),
                      ],
                    ),
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
                        'D',
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
                                "$_default41",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix41", textAlign: TextAlign.center),
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
                                "$_default42",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix42", textAlign: TextAlign.center),
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
                                "$_default43",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix43", textAlign: TextAlign.center),
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
                                "$_default44",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_mattrix44", textAlign: TextAlign.center),
                      ],
                    ),
                    Text(
                      "$_supplyd",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PromptBold'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'Dum',
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
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_dumdemanda",
                            style: TextStyle(fontFamily: 'PromptBold'),
                            textAlign: TextAlign.center),
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
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_dumdemandb",
                            style: TextStyle(fontFamily: 'PromptBold'),
                            textAlign: TextAlign.center),
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
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_dumdemandc",
                            style: TextStyle(fontFamily: 'PromptBold'),
                            textAlign: TextAlign.center),
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
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Text("$_dumdemandd",
                            style: TextStyle(fontFamily: 'PromptBold'),
                            textAlign: TextAlign.center),
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
                        'De',
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
                      "$_demandd",
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