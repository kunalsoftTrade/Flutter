import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 1;
  final String name = "Kunal";

  const HomePage({super.key});
//flutter works on widgets, everything is a widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(//scaffold is the structure of the app containing header, body, footer
      appBar: AppBar(//header of the app
        title: Text('First App'),// every ...() is a widget
      ),

//--------------------------------------------------------------------

      body: Center(//body of the app
      //using container to hold the text widget, it is like a box
        child: Container(
          child: Text(
            'this is the $days days of flutter development, and my name is $name!',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
        ),
      ),

//--------------------------------------------------------------------

      //it is the footer of the app
      drawer: Drawer(
        child: Text('This is drawer'),
      ),



    );
  }
}
