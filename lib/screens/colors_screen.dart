import 'package:flutter/material.dart';

import '../components/item_number.dart';
import '../modules/number_modules.dart';

class ColorsScreen extends StatefulWidget {
  final Color color;
  const ColorsScreen({required this.color,super.key});

  @override
  State<ColorsScreen> createState() => _ColorsScreenState();
}
class _ColorsScreenState extends State<ColorsScreen> {
  final List<ItemModule> colorsScreen = const [
    ItemModule(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        EnName: 'black',
        sound: 'sounds/colors/black.wav'),
    ItemModule(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        EnName: 'brown',
        sound: 'sounds/colors/brown.wav'),
    ItemModule(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Kiiro',
        EnName: 'yellow',
        sound: 'sounds/colors/yellow.wav'),
    ItemModule(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        EnName: 'gray',
        sound: 'sounds/colors/gray.wav'),
    ItemModule(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        EnName: 'green',
        sound: 'sounds/colors/green.wav'),
    ItemModule(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        EnName: 'red',
        sound: 'sounds/colors/red.wav'),
    ItemModule(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        EnName: 'white',
        sound: 'sounds/colors/white.wav'),
    ItemModule(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        EnName: 'yellow',
        sound: 'sounds/colors/yellow.wav'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[800],          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon:const Icon(Icons.arrow_back, color: Colors.white, size: 25)),
          title:const Text('Colors',
              style: TextStyle(color: Colors.white, fontSize: 24)),
        ),
        body: ListView.builder(
            itemCount: colorsScreen.length,
            itemBuilder: (BuildContext context, i) {
              return ItemNumber(
                number: colorsScreen[i],
                color: widget.color,
              );
            }));
  }
}
