import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _houses = ['Big Home'];

  @override
  Widget build(context) {
    // Scaffold create a new white page in the app.
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Parinaz new home"),
            ),
            body: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text("Add new home"),
                    onPressed: () {
                      setState(() {
                        _houses.add('New Home!');
                      });
                    },
                  ),
                ),
                Column(
                    children: _houses
                        .map((element) => Card(
                              child: Column(
                                children: <Widget>[
                                  Image.asset('assets/home.png'),
                                  Text("new home")
                                ],
                              ),
                            ))
                        .toList())
              ],
            )));
  }
}
