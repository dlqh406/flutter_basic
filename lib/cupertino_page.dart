import 'package:flutter/material.dart';  //메테리얼 가져오기
import 'package:flutter/cupertino.dart'; //쿠퍼티노디자인 가져오기

class CupertinoPage extends StatefulWidget {
  @override
  _CupertinoPageState createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle:  Text("쿠퍼티노 UI"),
      ),
      body:  Column(
        children: <Widget>[
          CupertinoButton(
            child: Text("쿠퍼티노 버튼"),
          ),
          CupertinoSwitch(
            value:  _switch,
            onChanged:  (bool value){
              setState(() {
                _switch = value;
              });
            },
          ),
          RaisedButton(
            child: Text("머터리얼 버튼")
          ),
        Switch(
          value:  _switch,
          onChanged:  (bool value){
            setState(() {
              _switch = value;
            });
          },
        )
        ],
      ),
    );
  }
}
