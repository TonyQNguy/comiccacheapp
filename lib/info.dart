// detail page for each comic book

import 'package:flutter/material.dart';

class NavigationItem {

  IconData iconInfo;

  NavigationItem(this.iconInfo);

}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    NavigationItem(Icons.home),
    NavigationItem(Icons.book),
    NavigationItem(Icons.local_library),
    NavigationItem(Icons.person),
  ];
}



