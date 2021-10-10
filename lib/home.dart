// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fooder_lich/card1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    Card1(),
    // Container(
    //   color: Colors.red,
    // ),
    //Card2();
    Container(
      color: Colors.green,
    ),
    //Card3();
    Container(
      color: Colors.blue,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: style the title

      appBar: AppBar(
        title: Text(
          "Fooder lich App",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: style the body text
      body: pages[_selectedIndex],
      // 4
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // TODO: Set Selected tab bar
        currentIndex: _selectedIndex,
        // 6
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          // ignore: prefer_const_constructors
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
        ],
      ),
    );
  }
}
