import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/category.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/family_screen.dart';
import 'package:toku/screens/number_screen.dart';
import 'package:toku/screens/phrases_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title:
            Text('tuko', style: TextStyle(color: Colors.white, fontSize: 25)),
        backgroundColor: Colors.deepPurple[800],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Categories(
              color: Colors.deepPurple,
              text: 'Nember',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NumberScreen(color: Colors.deepPurple)));
              }),
          Categories(
              color: Colors.deepPurple[400],
              text: 'Family Members',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FamilyScreen(color:Colors.deepPurple[400]!,)));
              }),
          Categories(
              color: Colors.deepPurple[300],
              text: 'Colors',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ColorsScreen(color:Colors.deepPurple[300]! ,)));
              }),
          Categories(
              color: Colors.deepPurple[200],
              text: 'Phrases',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => PhrasesScreen(color: Colors.deepPurple[200]!,)));
              })
        ],
      ),
    );
  }
}
