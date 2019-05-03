import 'package:flutter/material.dart';
import 'package:northwest/function/GlobalState.dart';

class Input3x3 extends StatefulWidget {
  Input3x3({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Input3x3State createState() => _Input3x3State();
}

class _Input3x3State extends State<Input3x3> {
  TextEditingController _supplyaController;
  TextEditingController _supplybController;
  TextEditingController _supplycController;
  TextEditingController _demandaController;
  TextEditingController _demandbController;
  TextEditingController _demandcController;
  GlobalState _store = GlobalState.instance;

  @override
  void initState() {
    _supplyaController = new TextEditingController();
    _supplybController = new TextEditingController();
    _supplycController = new TextEditingController();
    _demandaController = new TextEditingController();
    _demandbController = new TextEditingController();
    _demandcController = new TextEditingController();
    _store.set('supplya', '');
    _store.set('supplyb', '');
    _store.set('supplyc', '');
    _store.set('demanda', '');
    _store.set('demandb', '');
    _store.set('demandc', '');
    _supplyaController.text = _store.get('supplya');
    _supplybController.text = _store.get('supplyb');
    _supplycController.text = _store.get('supplyc');
    _demandaController.text = _store.get('demanda');
    _demandbController.text = _store.get('demandb');
    _demandcController.text = _store.get('demandc');
  }

  onClickBtn() {
    _store.set('supplya', _supplyaController.text);
    _store.set('supplyb', _supplybController.text);
    _store.set('supplyc', _supplycController.text);
    _store.set('demanda', _demandaController.text);
    _store.set('demandb', _demandbController.text);
    _store.set('demandc', _demandcController.text);
    if(int.parse(_store.get('supplya')) == int.parse(_store.get('supplyb'))){
        Navigator.of(context).pushNamed('/3x3main');
    }else if(int.parse(_store.get('supplya')) < int.parse(_store.get('supplyb'))){
        Navigator.of(context).pushNamed('/3x3dumbot');
    }else{
      Navigator.of(context).pushNamed('/3x3dumsup');
    }
    
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: new GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: new Container(
              child: SingleChildScrollView(
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
                        decoration: InputDecoration(labelText: 'Supply A'),
                        controller: _supplyaController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Container(
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Supply B'),
                        controller: _supplybController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Container(
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Supply C'),
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
                        decoration: InputDecoration(labelText: 'Demand a'),
                        controller: _demandaController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Container(
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Demand b'),
                        controller: _demandbController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Container(
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Demand c'),
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
                    onPressed: onClickBtn,
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
