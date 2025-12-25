import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //build method describes how to display the widget in terms of other, lower level widgets
    //buildContext: context is the location of this widget in the widget tree
    // context is used to locate a widget in the widget tree and to access theme data, localization, and other inherited widgets.

    return MaterialApp(
      //it is using a widget called HomePage from another file
      // home: HomePage(),

      //-------------------------- theme coloring ---------------------------------

      // 🌞 Light theme
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        // ✅ AppBar theme moved here
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 105, 72, 22),
          foregroundColor: Colors.white, // title & icons
          elevation: 2,
          centerTitle: true,
        ),
      ),

      // 🌙 Dark theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
      ),

      //-------------------------- routing ---------------------------------
      initialRoute: "/login", //we can set any page as initial page/route
      routes: {
        //taking context here cause it shows where we are in the widget tree
        "/": (context) => HomePage(),
        //loginPage() is the object of LoginPage class
        "/login": (context) => LoginPage(),
      },
    );
  }
}
