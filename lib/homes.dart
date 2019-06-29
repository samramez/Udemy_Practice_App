import 'package:flutter/material.dart';

class Homes extends StatelessWidget {
  final List<String> _houses;

  Homes(this._houses);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: _houses
            .map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/home_logo.png'),
                      Text(element)
                    ],
                  ),
                ))
            .toList());
  }
}

/** Notes:
 * map() enables to transform every element in the list and return it as
 * a new element.
 */
