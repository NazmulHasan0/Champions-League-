import 'package:flutter/material.dart';
import 'dashboardPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Champions League',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[900],
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                //
                Image.asset('photo/uefa.jpg'),
                //
                Container(
                  margin: EdgeInsets.fromLTRB(30, 50, 10, 0),
                  height: 100.0,
                  width: 400.0,
                  child: Card(
                    color: Colors.pink[900],
                    elevation: 10,
                    child: Text(
                      'Champions League 2020',
                      style: TextStyle(fontSize: 35.0, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                //
                Container(
                  margin: EdgeInsets.fromLTRB(190.0, 100, 0.0, 0.0),
                  child: RaisedButton(
                    color: Colors.pink[900],
                    child: Card(
                      elevation: 10,
                      color: Colors.pink[900],
                      child: Text(
                        'Next page',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DashboardPage(),
                        ),
                      );
                    },
                  ),
                ),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
