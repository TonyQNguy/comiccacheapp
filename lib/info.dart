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
      "Desc. of Spiderman...",
      Author(
        "Alan Moore", 
        176,
        "assets/authors/AlanMoore.jpg"
      ),
      "4.67",
      "assets/comics/Daredevil.jpg"
    ),

    Book( 
      // BookName, Description
      "ExMachina",
      "Desc. of Spiderman...",
      Author(
        "Brian Vaughan", 
        176,
        "assets/authors/BrianVaughan.jpg"
      ),
      "4.67",
      "assets/comics/ExMachina.jpg"
    ),

    Book( 
      // BookName, Description
      "Fantastic Four",
      "Desc. of Spiderman...",
      Author(
        "Frank Miller", 
        176,
        "assets/authors/FrankMiller.jpg"
      ),
      "4.67",
      "assets/comics/FantasticFour.jpg"
    ),

    Book( 
      // BookName, Description
      "Irredeemable",
      "Desc. of Spiderman...",
      Author(
        "Geoff Johns", 
        176,
        "assets/authors/GeoffJohns"
      ),
      "4.67",
      "assets/comics/Irredeemable.jpg"
    ),

    Book( 
      // BookName, Description
      "New X-Men",
      "Desc. of Spiderman...",
      Author(
        "Grant Morrison", 
        176,
        "assets/authors/GrantMorrison"
      ),
      "4.67",
      "assets/comics/NewXMen.jpg"
    ),

    Book( 
      // BookName, Description
      "Planetary",
      "Desc. of Spiderman...",
      Author(
        "Jack Kirby", 
        176,
        "assets/authors/JackKirby"
      ),
      "4.67",
      "assets/comics/Planetary.jpg"
    ),

    Book( 
      // BookName, Description
      "The Swamp Thing",
      "Desc. of Spiderman...",
      Author(
        "Mark Waid", 
        176,
        "assets/authors/MarkWaid"
      ),
      "4.67",
      "assets/comics/SwampThing.jpg"
    ),

    Book( 
      // BookName, Description
      "The Flash",
      "Desc. of Spiderman...",
      Author(
        "Neil Gaiman", 
        176,
        "assets/authors/NeilGaiman"
      ),
      "4.67",
      "assets/comics/TheFlash.jpg"
    ),

    Book( 
      // BookName, Description
      "The Sandman",
      "Desc. of Spiderman...",
      Author(
        "Warren Ellis", 
        176,
        "assets/authors/WarrenEllis"
      ),
      "4.67",
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
      "/path/to/authorimage",
    ),

    Author(
      "Stan Lee",
      176,
      "/path/to/authorimage",
    ),

    Author(
      "Stan Lee",
      176,
      "/path/to/authorimage",
    ),

    Author(
      "Stan Lee",
      176,
      "/path/to/authorimage",
    ),

    Author(
      "Stan Lee",
      176,
      "/path/to/authorimage",
    ),

    Author(
      "Stan Lee",
      176,
      "/path/to/authorimage",
    ),

    Author(
      "Stan Lee",
      176,
      "/path/to/authorimage",
    ),

    Author(
      "Stan Lee",
      176,
      "/path/to/authorimage",
    ),

    Author(
      "Stan Lee",
      176,
      "/path/to/authorimage",
    ),

    Author(
      "Stan Lee",
      176,
      "/path/to/authorimage",
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

