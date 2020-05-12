import 'package:flutter/material.dart';
import 'package:flutter_learn/ui/pages/main/initialize_item.dart';


class DXMainScreen extends StatefulWidget {
  static const String routeName = "/";

  @override
  _DXMainScreenState createState() => _DXMainScreenState();
}

class _DXMainScreenState extends State<DXMainScreen> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: items,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
