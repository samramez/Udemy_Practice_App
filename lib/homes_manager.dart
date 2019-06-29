import 'package:flutter/material.dart';

import './homes.dart';

class HomesManager extends StatefulWidget {
  final String startingHomes;

  HomesManager(this.startingHomes);

  @override
  State<StatefulWidget> createState() {
    return _HomeManagerState();
  }
}

class _HomeManagerState extends State<HomesManager> {
  List<String> _houses = [];

  @override
  void initState() {
    super.initState();
    _houses.add(widget.startingHomes);
  }


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
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