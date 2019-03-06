import 'package:flutter/material.dart';

import './homes_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(context) {
    // Scaffold create a new white page in the app.
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Parinaz new home"),
            ),
            body: HomesManager()
        )
    );
  }
}
