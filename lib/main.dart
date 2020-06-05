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
            Column(
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
                Container(
                  height: 120,
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
                    spacing: 3.0,
                    runSpacing: 1.5,
                    children: <Widget>[
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        onPressed: () {},
                        color: Colors.grey,
                        textColor: Colors.white,
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 22.0,
                            height: 1.2,
                          ),
                        ),
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        onPressed: () {},
                        color: Colors.grey,
                        textColor: Colors.white,
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 22.0,
                            height: 1.2,
                          ),
                        ),
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        onPressed: () {},
                        color: Colors.grey,
                        textColor: Colors.white,
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 22.0,
                            height: 1.2,
                          ),
                        ),
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        onPressed: () {},
                        color: Colors.grey,
                        textColor: Colors.white,
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 22.0,
                            height: 1.2,
                          ),
                        ),
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        onPressed: () {},
                        color: Colors.grey,
                        textColor: Colors.white,
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 22.0,
                            height: 1.2,
                          ),
                        ),
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        onPressed: () {},
                        color: Colors.grey,
                        textColor: Colors.white,
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 22.0,
                            height: 1.2,
                          ),
                        ),
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        onPressed: () {},
                        color: Colors.grey,
                        textColor: Colors.white,
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 22.0,
                            height: 1.2,
                          ),
                        ),
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        onPressed: () {},
                        color: Colors.grey,
                        textColor: Colors.white,
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 22.0,
                            height: 1.2,
                          ),
                        ),
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        onPressed: () {},
                        color: Colors.grey,
                        textColor: Colors.white,
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 22.0,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
