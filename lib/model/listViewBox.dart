import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Modalview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "DONATE",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Divider(
                  height: 2.0,
                  color: Colors.transparent,
                ),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.boxOpen,
                    size: 40,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    'USD 0.20',
                    style: TextStyle(letterSpacing: 2),
                  ),
                  trailing: RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () {},
                    child: Text(
                      'Donate',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Divider(
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.boxOpen,
                    size: 40,
                  ),
                  title: Text(
                    'USD 0.50',
                    style: TextStyle(letterSpacing: 2),
                  ),
                  trailing: RaisedButton(
                    color: Colors.grey,
                    onPressed: () {},
                    child: Text(
                      'Donate',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Divider(
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.boxOpen,
                    size: 40,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'USD 1',
                    style: TextStyle(letterSpacing: 2),
                  ),
                  trailing: RaisedButton(
                    color: Colors.deepOrange,
                    onPressed: () {},
                    child: Text(
                      'Donate',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
