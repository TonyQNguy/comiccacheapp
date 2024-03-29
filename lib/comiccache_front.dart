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
            padding:  const EdgeInsets.only(right: 16,),
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
                
                Center(
                  child: Text(
                    "Find New Comics",
                    style: GoogleFonts.catamaran(
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                      height: 1,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),

                // Call to the Filter Build
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: buildFilters(),
                  ),
                ),
  
              ],
            ),
          ),

          // Call to the Book Build
          Expanded(
            child: Container(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: buildBooks(),
              ),
            ),
          ),

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
                
                // Call To the Build Authors Function
                
                Container(
                  height: 100,
                  margin: const EdgeInsets.only(bottom: 16),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: buildAuthors(),
                  ),
                ),
                
              ],
            ),
          ),

        ],
      ),

      // INSERT NAVIGATION HERE

    );
  }


// First work on the filters and then implement into the main body
List<Widget> buildFilters() {
  // this utilizes the map function to iterate over the filters 
  // and applies the buildFilter to each element and then converts to a list
  List<Widget> list = filters.map((filter) => buildFilter(filter)).toList();
  return list;
}

Widget buildFilter(Filter item) {
  // want to use a gesture detector
  return GestureDetector(
    onTap: () {
      setState(() {
        selectedFilter = item;
      });
    },
    child: Container(
      height: 60,  // adjusted height for better visibility
      padding: const EdgeInsets.symmetric(horizontal: 20),  // increased horizontal padding
      // puts the filters into a "stack"
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 40,  // increased width for the indicator
              height: 4,  // increased height for the indicator
              color: selectedFilter == item ? kPrimaryColor : Colors.transparent,
            ),
          ),
          // centers the text
          Center(
            child: Text(
              item.name,
              style: GoogleFonts.catamaran(
                color: selectedFilter == item ? kPrimaryColor : Colors.grey[600],  // adjusted color for better visibility
                fontSize: 14,  // increased font size for better visibility
                fontWeight: FontWeight.bold,
                letterSpacing: 2,  // reduced letter spacing
              ),
            ),
          ),
        ],
      ),
    ),
  );
}


List<Widget> buildBooks() {
  // basically doing the same as we did in filters but will the books instead
  // we will do the same thing for authors also
  List<Widget> list = comics.asMap().entries.map((entry) {
    int index = entry.key;
    Book book = entry.value;
    return buildBook(book, index);
  }).toList();
  return list;
}

Widget buildBook(Book book, int index) {  // change the parameters
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ComicBookDetail(book: book)), // need to add book variable to details, make sure to initalize
      );
    },
    child: Container(
      margin: EdgeInsets.only(right: 32, left: index == 0 ? 16 : 0, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 6,  // Reduced spread radius for a softer shadow
                    blurRadius: 10,  // Reduced blur radius for a softer shadow
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(12),  // Added border radius for rounded corners
              ),
              margin: const EdgeInsets.only(bottom: 16, top: 24),
              child: Hero(
                tag: book.title,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),  // Match the border radius
                  child: Image.asset(
                    book.image,
                    fit: BoxFit.cover,  // Use BoxFit.cover for better image scaling
                  ),
                ),
              ),
            ),
          ),

          Text(
            book.title,
            style: GoogleFonts.catamaran(
              fontSize: 18,  // Increased font size for the book title
              fontWeight: FontWeight.bold,
              color: Colors.black,  // Adjusted color for better visibility
            ),
          ),

          Text(
            "by ${book.author.name}",  // Added "by" before the author's name for clarity
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],  // Adjusted color for better visibility
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    ),
  );
}

// we will do author last since navigation is more necessary

List<Widget> buildAuthors(){
  // did the same mapping for author as we did for the comic book
  List<Widget> list = authors.asMap().entries.map((entry) {
  int index = entry.key;
  Author author = entry.value;
  return buildAuthor(author, index);
  }).toList();
  return list; 
}


Widget buildAuthor(Author author, int index) {  // change the parameters
  return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(right: 16, left: index == 0 ? 16 : 0),
      width: 255,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Card(
            elevation: 4,
            margin: const EdgeInsets.all(0),
            clipBehavior: Clip.antiAlias,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(author.image), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          const SizedBox(
            width: 12,
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                author.name,
                style: GoogleFonts.catamaran(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                children: [

                  const Icon(
                    Icons.library_books,
                    color: Colors.grey,
                    size: 14,
                  ),

                  const SizedBox(
                    width: 8,
                  ),
                  
                  Text(
                    author.numBooks.toString() + " books",
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),

            ],
          ),

        ],
      ),
    );
}



List<Widget> buildNavigationItems() {
  // the same mapping as we did for filter
  List<Widget> list = navigationItems.map((navigationItem) => buildNavigationItem(navigationItem)).toList();
  return list;
}

Widget buildNavigationItem(NavigationItem item) { 
  return GestureDetector(
    onTap: () {
        setState(() {
          selectedItem = item;
        });
      },
      child: Container(
        width: 50,
        child: Center(
          child: Icon(
            item.iconInfo,
            color: selectedItem == item ? kPrimaryColor : Colors.grey[400],
            size: 28,
          ),
        ),
      ),
  );
}

}