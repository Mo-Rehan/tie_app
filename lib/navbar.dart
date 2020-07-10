import 'package:flutter/material.dart';
import 'webview.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      Container(
        child: Center(child: Webview('https://takeiteasyengineers.com/')),
      ),
      Center(child: Webview('https://takeiteasyengineers.com/categories')),

      //Center(child: Webview('https://takeiteasyengineers.com/internships/')),
      //Center(child: Text('Internship')),
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
      BottomNavigationBarItem(
          icon: Icon(Icons.assignment), title: Text('Academic')),
      //BottomNavigationBarItem(
          //icon: Icon(Icons.work), title: Text('Interships')),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      //appBar: AppBar( title: Text('For every BEncher'),backgroundColor: Colors.black, ),
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
