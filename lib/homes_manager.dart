import 'package:flutter/material.dart';

import './homes.dart';

class HomesManager extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomeManagerState();
  }
}

class _HomeManagerState extends State<HomesManager> {

  List<String> _houses = ['Big Home'];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
      Homes(_houses)
    ]);
  }
}