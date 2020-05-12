
import 'package:flutter/material.dart';
import 'package:flutter_learn/ui/pages/home/home_screen.dart';
import '../favor/favor_screen.dart';


// 全局

final List<Widget> pages = [
  DXHomeScreen(),
  DXFavorScreen()
];

final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
    title: Text("首页"),
    icon: Icon(Icons.home)
  ),

  BottomNavigationBarItem(
      title: Text("收藏"),
      icon: Icon(Icons.star)
  )
];