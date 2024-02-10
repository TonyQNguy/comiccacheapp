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
  String image;
  Author author; // implement author later 

  Book(this.title, this.description, this.author, this.rating, this.image);

}

//implement getBook here

class Author { 
  
  String name;
  int numBooks;
  String image; 

  Author(this.name, this.numBooks, this.image);

}

// implement getAuthor here

class Filter { 

  String name;

  Filter(this.name);

}

// implement getFilter here


