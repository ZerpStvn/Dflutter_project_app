import 'package:ChamstersCharity/screens/donation.dart';
import 'package:ChamstersCharity/screens/information.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Homepage.dart';

class MyhomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyhomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    MyHomePage(),
    InfoPage(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Icon(
            FontAwesomeIcons.boxOpen,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DonationPage()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            MyHomePage(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Icon(
                            FontAwesomeIcons.newspaper,
                            size: 30,
                            color: currentTab == 0
                                ? Colors.deepOrangeAccent
                                : Colors.redAccent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'Dashboard',
                            style: TextStyle(
                              fontSize: 12,
                              color:
                                  currentTab == 0 ? Colors.grey : Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Right Tab bar icons

              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              InfoPage(); // if user taps on this dashboard tab will be active
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.user,
                            size: 30,
                            color: currentTab == 2
                                ? Colors.deepOrange
                                : Colors.redAccent,
                          ),
                          Text(
                            'Information',
                            style: TextStyle(
                              fontSize: 12,
                              color:
                                  currentTab == 2 ? Colors.grey : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
