import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  // statelessWidget : 상태를 가지를 수 없는 위젯
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: Hellopage("hello bosung"));
  }
}
// stfull을 입력하면 자동 완성됨
// 화면을 아래처럼 하나씩 만든다, 그리고 위 myapp에서 불러온다
class Hellopage extends StatefulWidget {
 final String title;
 Hellopage(this.title);

  @override
  _HellopageState createState() => _HellopageState();
}

class _HellopageState extends State<Hellopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text(widget.title),),
        body: Text(widget.title,style:TextStyle(fontSize: 30))
    );
  }
}
