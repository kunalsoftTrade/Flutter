import 'package:first_app/Home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //it is using a widget called HomePage from another file
      home: HomePage(),
    );
  }
}
