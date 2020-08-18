import 'package:DemoApp/bayern.dart';
import 'package:DemoApp/leipzig.dart';
import 'package:DemoApp/lyon.dart';
import 'package:DemoApp/psg.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyanAccent[700],
        appBar: AppBar(
          title: Center(child: Text('Dash Board')),
        ),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.purple[900],
                    height: 100,
                    width: 100,
                    child: Card(
                      elevation: 50,
                      color: Colors.purple[900],
                      //
                      child: RaisedButton(
                        color: Colors.purple[900],
                        child: Image.asset('photo/psg.jpg'),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Psg(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  //
                  Divider(),
                  //
                  Container(
                    color: Colors.purple[900],
                    height: 100,
                    width: 100,
                    child: Card(
                      elevation: 50,
                      color: Colors.purple[900],
                      child: RaisedButton(
                        color: Colors.purple[900],
                        child: Image.asset('photo/bayern.jpg'),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Bayern(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              //

              //
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.purple[900],
                    height: 100,
                    width: 100,
                    child: Card(
                      elevation: 50,
                      color: Colors.purple[900],
                      child: RaisedButton(
                        color: Colors.purple[900],
                        child: Image.asset('photo/leipzig.png'),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Leipzig(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  //
                  Divider(),
                  //
                  Container(
                    color: Colors.purple[900],
                    height: 100,
                    width: 100,
                    child: Card(
                      elevation: 50,
                      color: Colors.purple[900],
                      child: RaisedButton(
                        color: Colors.purple[900],
                        child: Image.asset('photo/lyon.jpg'),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Lyon(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
