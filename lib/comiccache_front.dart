import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:comiccacheapp/info.dart';
import 'package:comiccacheapp/comiccache_details.dart';


class ComicBookStore extends StatefulWidget {
  //const ComicBookStore({super.key});

  @override
  State<ComicBookStore> createState() => _ComicBookStoreState();
}

class _ComicBookStoreState extends State<ComicBookStore> {

  // add calls to the functions from info.dart
  List<Book> comics = getBooks();
  List<Author> authors = getAuthors();
  List<Filter> filters = getFilters();
  List<NavigationItem> navigationItems = getNavigationItem();

  late Filter selectedFilter;
  late NavigationItem selectedItem;

  void initState() { 
    super.initState();
    // utilize a setState to update the page and the items
    setState(() {
      selectedFilter = filters[0];
      selectedItem = navigationItems[0];
    });
  } // initState


  // we will split up the front page into multiple blocks to make it easier to build by collaboration

  @override
  // build the main block of the page 
  Widget build(BuildContext context) {
    // insert a Scaffold instead of a Placeholder 
    return const Placeholder();
  }

  List<Widget> buildFilters(){

  }

  Widget buildFilter(Filter item) { 

  }

  List<Widget> buildBooks(){

  }

  Widget buildBook(Filter item) { 

  }

  List<Widget> buildAuthors(){

  }

  Widget buildAuthor(Filter item) { 

  }




}