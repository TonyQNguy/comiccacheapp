import 'package:comiccacheapp/comiccache_front.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() { 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Comic Cache",
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.catamaranTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: ComicBookStore(),
    );
  }
}