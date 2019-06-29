import 'package:flutter/material.dart';

import './homes_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        // Scaffold create a new white page in the app.
        home: Scaffold(
            appBar: AppBar(
              title: Text("Parinaz new home"),
            ),
            body: HomesManager('Parinaz Home')));
  }
}
