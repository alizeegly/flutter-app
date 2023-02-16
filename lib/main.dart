import 'package:flutter/material.dart';
import 'package:travelapp/screens/home.dart';
// import 'package:travelapp/screens/welcome.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/screens/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const MainPage()
    );
  }
}
