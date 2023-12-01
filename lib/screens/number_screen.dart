import 'package:flutter/material.dart';

import '../components/item_number.dart';
import '../modules/number_modules.dart';

class NumberScreen extends StatefulWidget {
  final Color color;
  const NumberScreen({required this.color,super.key});
  @override
  State<NumberScreen> createState() => _NumberScreenState();
}
class _NumberScreenState extends State<NumberScreen> {
  List<ItemModule> number = const [
    ItemModule(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        EnName: 'one',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        EnName: 'two',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        EnName: 'three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        EnName: 'four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        EnName: 'five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        EnName: 'six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        EnName: 'seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        EnName: 'eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyū',
        EnName: 'nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModule(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Jū',
        EnName: 'ten',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[800],          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon:const Icon(Icons.arrow_back, color: Colors.white, size: 25)),
          title:const Text('Number',
              style: TextStyle(color: Colors.white, fontSize: 24)),
        ),
        body: ListView.builder(
            itemCount: number.length,
            itemBuilder: (BuildContext context, i) {
              return ItemNumber(number: number[i], color:widget.color);
            }));
  }
}
