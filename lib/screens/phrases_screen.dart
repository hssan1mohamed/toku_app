import 'package:flutter/material.dart';

import '../components/item_number.dart';
import '../modules/number_modules.dart';

class PhrasesScreen extends StatefulWidget {
  final Color color;
  const PhrasesScreen({required this.color,super.key});
  @override
  State<PhrasesScreen> createState() => _PhrasesScreenState();
}
class _PhrasesScreenState extends State<PhrasesScreen> {
  final List<ItemModule> phrasesList = const [
    ItemModule(
        jpName: 'Kimasu ka',
        EnName: 'are you coming',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemModule(
        jpName: 'Kōdoku suru koto o wasurenaide kudasai',
        EnName: 'dont forget to subscribe',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    ItemModule(
        jpName: 'Go kibun wa ikagadesu ka',
        EnName: 'how are you feeling',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemModule(
        jpName: 'Watashi wa anime ga daisukidesu',
        EnName: 'i love anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
    ItemModule(
        jpName: 'Watashi wa puroguramingu ga daisukidesu',
        EnName: 'i love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    ItemModule(
        jpName: 'Puroguramingu wa kantandesu',
        EnName: 'programming is easy',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    ItemModule(
        jpName: 'Anata no namae wa nandesuka',
        EnName: 'what is your name',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    ItemModule(
        jpName: 'Doko ni iku no',
        EnName: 'where are you_going',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    ItemModule(
        jpName: 'Hai, kimasu',
        EnName: 'yes im coming',
        sound: 'sounds/phrases/yes_im_coming.wav'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[800],          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon:const Icon(Icons.arrow_back, color: Colors.white, size: 25)),
          title:const Text('Phrases ',
              style: TextStyle(color: Colors.white, fontSize: 24)),
        ),
        body: ListView.builder(
            itemCount: phrasesList.length,
            itemBuilder: (BuildContext context, i) {
              return ItemNumber(
                number: phrasesList[i],
                color:widget.color,
              );
            }));
  }
}
