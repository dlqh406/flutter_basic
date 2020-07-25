import 'package:flutter/material.dart';
import 'package:flutter_basic/cupertino_page.dart';

//빌드가 시작됨
void main() {
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  // statelessWidget : 상태를 가지를 수 없는 위젯, 딱 멈춰있는 위젯
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
        home: Hellopage());
  }
}

// stfull을 입력하면 자동 완성됨
// 화면을 아래처럼 하나씩 만든다, 그리고 위 myapp에서 불러온다
class Hellopage extends StatefulWidget {
  @override
  _HellopageState createState() => _HellopageState();
}

class _HellopageState extends State<Hellopage> {
  String _title = "hello1";
  String _message = "yet pushed";
  int _count = 0;
  // _variable : 여기 안에서만 사용하는 변수
  // build 안에서 사용할 변수를 여기에 선언한다

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child : Icon(Icons.add),
        onPressed: _chageMessage),

      appBar: AppBar(title : Text(_title),),
        body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // 정렬 위젯
              children: <Widget>[
                    // 복수의 위젯을 넣고자 할때 배열에 넣는다
                    Text(_message,style:TextStyle(fontSize: 30)),
                    Text("$_count",style:TextStyle(fontSize: 30)),
                    RaisedButton(
                      child: Text("화면이동"),
                      onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CupertinoPage())
                        );
                      },
                    )
                    // int형을 text에 넣을경우 "$_count" 선언한다, 따옴표,$
                  ],
                ),
            )
    );
  }

  void _chageMessage() {
    setState(() {
      _message = " pushed: greentea";
      _count += 1;
    });
  }
}
