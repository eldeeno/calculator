import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator/constants/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var ansStr = 0;
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBackground,
      appBar: AppBar(
        bottomOpacity: 0,
        backgroundColor: kDarkBackground,
      ),
      body: Container(
        padding: EdgeInsets.only(right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 80.0,
              padding: EdgeInsets.only(
                right: 20.0,
                left: 20.0,
              ),
              child: TextField(
                readOnly: true,
                showCursor: true,
                autofocus: true,
                controller: myController,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            Divider(
              height: 155,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 25.0, right: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.clock,
                          color: Colors.white70,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.rulerHorizontal,
                          color: Colors.white70,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.simCard,
                          color: Colors.white70,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.windowClose,
                          color: Colors.lightGreenAccent,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white70,
              thickness: 1,
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0),
              child: Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: <Widget>[
                  _button1('C', Colors.orangeAccent, kColor1, () {
                    myController.clear();
                  }),
                  _button1('( )', kColor2, kColor1, () {}),
                  _button1('%', kColor2, kColor1, () {
                    myController.text = '%';
                  }),
                  _button1('÷', kColor2, kColor1, () {}),
                  _button1('9', Colors.white, kColor1, () {
                    myController.text += '9';
                  }),
                  _button1('8', Colors.white, kColor1, () {
                    myController.text += '8';
                  }),
                  _button1('7', Colors.white, kColor1, () {
                    myController.text += '7';
                  }),
                  _button1('x', kColor2, kColor1, () {
                    myController.text += 'x';
                  }),
                  _button1('6', Colors.white, kColor1, () {
                    myController.text += '6';
                  }),
                  _button1('5', Colors.white, kColor1, () {
                    myController.text += '5';
                  }),
                  _button1('4', Colors.white, kColor1, () {
                    myController.text += '4';
                  }),
                  _button1('-', kColor2, kColor1, () {
                    myController.text += '-';
                  }),
                  _button1('3', Colors.white, kColor1, () {
                    myController.text += '3';
                  }),
                  _button1('2', Colors.white, kColor1, () {
                    myController.text += '2';
                  }),
                  _button1('1', Colors.white, kColor1, () {
                    myController.text += '1';
                  }),
                  _button1('+', kColor2, kColor1, () {
                    myController.text += '+';
                  }),
                  _button1('+/-', Colors.white, kColor1, () {}),
                  _button1('0', Colors.white, kColor1, () {
                    myController.text += '0';
                  }),
                  _button1('.', Colors.white, kColor1, () {
                    myController.text += '.';
                  }),
                  _button1('=', Colors.white, kColor2, () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _button1(String number, Color textColor, Color bgColor, Function() f) {
    return Container(
      height: 65,
      width: 80,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: BorderSide(
            width: 0.3,
            color: Colors.white30,
          ),
        ),
        onPressed: f,
        color: bgColor,
        textColor: Colors.white,
        child: Text(
          number,
          style: TextStyle(
            color: textColor,
            fontSize: 28.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Arial',
            height: 1.3,
          ),
        ),
      ),
    );
  }
}
