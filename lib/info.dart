// detail page for each comic book

import 'package:flutter/material.dart';

class NavigationItem {
  IconData iconInfo;
  NavigationItem(this.iconInfo);
}

List<NavigationItem> getNavigationItem(){
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
List<Book> getBooks() { 
  return <Book> [
    Book( 
      // BookName, Description
      "The Amazing Spiderman",
      "Desc. of Spiderman...",
      Author(
        "Stan Lee", 
        176,
        "assets/authors/StanLee.jpg"
      ),
      "4.67",
      "assets/comics/AmazingSpiderman.jpg"
    ),

    Book( 
      // BookName, Description
      "Daredevil",
      "Desc. of Daredevil...",
      Author(
        "Alan Moore", 
        176,
        "assets/authors/AlanMoore.jpg"
      ),
      "4.30",
      "assets/comics/Daredevil.jpg"
    ),

    Book( 
      // BookName, Description
      "ExMachina",
      "Desc. of ExMachina...",
      Author(
        "Brian Vaughan", 
        176,
        "assets/authors/BrianVaughan.jpg"
      ),
      "3.98",
      "assets/comics/ExMachina.jpg"
    ),

    Book( 
      // BookName, Description
      "Fantastic Four",
      "Desc. of Fantastic...",
      Author(
        "Frank Miller", 
        176,
        "assets/authors/FrankMiller.jpg"
      ),
      "4.13",
      "assets/comics/FantasticFour.jpg"
    ),

    Book( 
      // BookName, Description
      "Irredeemable",
      "Desc. of Irredeemable...",
      Author(
        "Geoff Johns", 
        176,
        "assets/authors/GeoffJohns.jpg"
      ),
      "3.50",
      "assets/comics/Irredeemable.jpg"
    ),

    Book( 
      // BookName, Description
      "New X-Men",
      "Desc. of New X-Men...",
      Author(
        "Grant Morrison", 
        176,
        "assets/authors/GrantMorrison.jpg"
      ),
      "4.60",
      "assets/comics/NewXMen.jpg"
    ),

    Book( 
      // BookName, Description
      "Planetary",
      "Desc. of Planetary...",
      Author(
        "Jack Kirby", 
        176,
        "assets/authors/JackKirby.jpg"
      ),
      "4.30",
      "assets/comics/Planetary.jpg"
    ),

    Book( 
      // BookName, Description
      "The Swamp Thing",
      "Desc. of The Swamp Thing...",
      Author(
        "Mark Waid", 
        176,
        "assets/authors/MarkWaid"
      ),
      "4.10",
      "assets/comics/SwampThing.jpg"
    ),

    Book( 
      // BookName, Description
      "The Flash",
      "Desc. of The Flash...",
      Author(
        "Neil Gaiman", 
        176,
        "assets/authors/NeilGaiman"
      ),
      "4.90",
      "assets/comics/TheFlash.jpg"
    ),

    Book( 
      // BookName, Description
      "The Sandman",
      "Desc. of The Sandman...",
      Author(
        "Warren Ellis", 
        176,
        "assets/authors/WarrenEllis.jpg"
      ),
      "4.78",
      "assets/comics/TheSandman.jpg"
    ),

  ]; // <Book>

}

class Author { 
  String name;
  int numBooks;
  String image; 

  Author(this.name, this.numBooks, this.image);
}

// implement getAuthor here
List<Author> getAuthors() { 
  return <Author> [
    Author(
      "Stan Lee",
      176,
      "assets/authors/StanLee.jpg",
    ),

    Author(
      "Alan Moore",
      60,
      "assets/authors/AlanMoore.jpg",
    ),

    Author(
      "Frank Miller",
      130,
      "assets/authors/FrankMiller.jpg",
    ),

    Author(
      "Geoff Johns",
      111,
      "assets/authors/GeoffJohns.jpg",
    ),

    Author(
      "Grant Morrison",
      59,
      "assets/authors/GrantMorrison.jpg",
    ),

    Author(
      "Jack Kirby",
      265,
      "assets/authors/JackKirby.jpg",
    ),

    Author(
      "Mark Waid",
      131,
      "assets/authors/MarkWaid.jpg",
    ),

    Author(
      "Neil Gaiman",
      89,
      "assets/authors/NeilGaiman.jpg",
    ),

    Author(
      "Brian Vaughan",
      120,
      "assets/authors/BrianVaughan.jpg",
    ),

    Author(
      "Warren Ellis",
      174,
      "assets/authors/WarrenEllis.jpg",
    ),

  ];
}

class Filter { 
  String name;
  Filter(this.name);
}

// implement getFilter here
List<Filter> getFilters(){
  return <Filter>[
    Filter("ORIGINALS"),
    Filter("LATEST"),
    Filter("UPCOMING"),
  ];
}

