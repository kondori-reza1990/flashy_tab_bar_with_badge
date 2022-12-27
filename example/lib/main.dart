import 'package:flashy_tab_bar_with_badge/flashy_tab_bar_with_badge.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    Center(child: Text("0")),
    Center(child: Text("1")),
    Center(child: Text("2")),
    Center(child: Text("3")),
    Center(child: Text("4"))
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flashy Tabbar (Flutter)'),
        ),
        body: Center(
          child: tabItems[_selectedIndex],
        ),
        bottomNavigationBar: FlashyTabBarWithBadge(
          animationCurve: Curves.easeInCubic,
          selectedIndex: _selectedIndex,
          //iconSize: 30,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            FlashyTabBarItem(
              icon: Icon(Icons.event),
              title: Text('Events'),
              badge: 2,
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.highlight),
              title: Text('Highlights'),
              badge: 5,
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
