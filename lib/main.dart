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
                textDirection: TextDirection.rtl,
                cursorColor: Colors.transparent,
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
              height: 150,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 25.0),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 30.0, left: 20.0),
                    child: FaIcon(
                      FontAwesomeIcons.clock,
                      color: Colors.white70,
                      size: 18,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 30.0, left: 10.0),
                    child: FaIcon(
                      FontAwesomeIcons.rulerHorizontal,
                      color: Colors.white70,
                      size: 18,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 30.0, left: 10.0),
                    child: FaIcon(
                      FontAwesomeIcons.simCard,
                      color: Colors.white70,
                      size: 18,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 30.0, left: 120.0),
                    child: FaIcon(
                      FontAwesomeIcons.windowClose,
                      color: Colors.lightGreenAccent,
                      size: 18,
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
              child: Wrap(
                spacing: 10.0,
                runSpacing: 5.0,
                children: <Widget>[
                  Container(
                    height: 65,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(
                          width: 0.3,
                          color: Colors.white30,
                        ),
                      ),
                      onPressed: () {},
                      color: kButtonColor1,
                      textColor: Colors.white,
                      child: Text(
                        "C",
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 25.0,
                          fontFamily: 'Arial',
                          height: 1.2,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 65,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(
                          width: 0.3,
                          color: Colors.white30,
                        ),
                      ),
                      onPressed: () {},
                      color: kButtonColor2,
                      textColor: Colors.white,
                      child: Text(
                        "=",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontFamily: 'Arial',
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
