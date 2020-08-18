import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';

class Leipzig extends StatefulWidget {
  @override
  _LeipzigState createState() => _LeipzigState();
}

class _LeipzigState extends State<Leipzig> {
  //
  //
  List data;
  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/json/leipzig.json');
    setState(() {
      data = json.decode(jsonText);
    });
    return 'success';
  }

  @override
  void initState() {
    this.loadJsonData();
  }

  //
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: 90,
                child: Card(
                  elevation: 10,
                  color: Colors.teal[900],
                  child: Text(
                    'Leipzig Squad',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                height: 400,
                width: 400,
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                            child: Text(
                              data[index]['name'][0],
                              style: TextStyle(
                                  color: Colors.white, fontSize: 25.0),
                            ),
                          ),
                          title: Text(
                            data[index]['name'],
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                          subtitle: Text(
                            data[index]['position'],
                            style:
                                TextStyle(color: Colors.white, fontSize: 17.0),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(240, 0, 0, 0),
                child: FloatingActionButton(
                  child: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
