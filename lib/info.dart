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

class Book { 

  String title;
  String description;
  String rating;
  String image
  Author author; // implement author later 

  Book(this.title, this.description, this.author, this.rating, this.image);
  
}


