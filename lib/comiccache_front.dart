import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:comiccacheapp/info.dart';
import 'package:comiccacheapp/comiccache_details.dart';
import 'package:google_fonts/google_fonts.dart';

Color kPrimaryColor = Colors.brown.shade200;
Color kStarsColor = Color(0xFFFA6400);

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.sort,
          color: kPrimaryColor,
          size: 28,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16,),
            child: Icon(
              Icons.search,
              color: Colors.grey[400],
              size: 28,
            ),
          ),
        ], systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Container(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.0),
                  spreadRadius: 8,
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text(
                  "Find New Comics",
                  style: GoogleFonts.catamaran(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    height: 1,
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),

                // INSERT FILTER CALL HERE

              ],
            ),
          ),

          // INSERT COMICS BOOKS CALL HERE

          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      const Text(
                        "Popular Authors",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Row(
                        children: [
                          Text(
                            "View All",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),

                          const SizedBox(
                            width: 8,
                          ),

                          Icon(
                            Icons.arrow_forward,
                            size: 18,
                            color: kPrimaryColor,
                          ),

                        ],
                      ),

                    ],
                  ),
                ),

                // INSERT AUTHORS CALL HERE

              ],
            ),
          ),

        ],
      ),

      // INSERT NAVIGATION HERE

    );
  }


/*
List<Widget> buildFilters(){

}

Widget buildFilter(Filter item) {  // change the parameters

}

List<Widget> buildBooks(){

}

Widget buildBook(Filter item) {  // change the parameters

}

List<Widget> buildAuthors(){

}

Widget buildAuthor(Filter item) {  // change the parameters

}

List<Widget> buildNavigationItems(){

}

Widget buildNavigationItem(Filter item) { 

}
*/




}