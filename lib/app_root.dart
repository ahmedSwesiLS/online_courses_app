import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_courses_app/home_screen.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme().copyWith(),
      ),
      home: HomeScreen(),
    );
  }
}
