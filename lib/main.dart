import 'package:flutter/material.dart';

main() => runApp(Quiz());

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(73, 69, 92, 1),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        )),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> sonucList = [];
  List<String> sorular = [
    "İtalya'nın başkenti Madrid'tir.",
    "Apple firmasının geliştirdiği web tarayıcı safaridir.",
  ];
  int soruIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                sorular[soruIndex],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15.0),
          child: FlatButton(
            textColor: Colors.white,
            color: Colors.green,
            onPressed: () {
              setState(() {
                soruIndex++;
                sonucList.add(Icon(
                  Icons.check,
                  color: Colors.green,
                ));
              });
            },
            child: Text(
              "DOĞRU",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15.0),
          child: FlatButton(
            textColor: Colors.white,
            color: Colors.red,
            onPressed: () {
              setState(() {
                soruIndex++;
                sonucList.add(Icon(
                  Icons.close,
                  color: Colors.red,
                ));
              });
            },
            child: Text(
              "YANLIŞ",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        )),
        Row(
          children: sonucList,
        )
      ],
    );
  }
}
