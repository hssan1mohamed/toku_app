import 'package:flutter/material.dart';

import '../components/item_number.dart';
import '../modules/number_modules.dart';

class FamilyScreen extends StatefulWidget {
  final Color color;
  const FamilyScreen({required this.color,super.key});

  @override
  State<FamilyScreen> createState() => _FamilyScreenState();
}
class _FamilyScreenState extends State<FamilyScreen> {
 final List<ItemModule> familyList = const [
    ItemModule(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        EnName: 'father',
        sound: 'sounds/family_members/daughter.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        EnName: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        EnName: 'daughter',
        sound: 'sounds/family_members/daughter.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Sofu',
        EnName: 'grandfather',
        sound: 'sounds/family_members/grand_father.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        EnName: 'grandmother',
        sound: 'sounds/family_members/grand_mother.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani',
        EnName: 'older brother',
        sound: 'sounds/family_members/older_bother.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        EnName: 'older sister',
        sound: 'sounds/family_members/older_sister.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        EnName: 'son',
        sound: 'sounds/family_members/son.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        EnName: 'younger brother',
        sound: 'sounds/family_members/younger_brohter.wav'),
    ItemModule(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        EnName: 'yunger sister',
        sound: 'sounds/family_members/younger_sister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[800],
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon:const Icon(Icons.arrow_back, color: Colors.white, size: 25)),
          title:const Text('Family Members',
              style: TextStyle(color: Colors.white, fontSize: 24)),
        ),
        body: ListView.builder(
            itemCount: familyList.length,
            itemBuilder: (BuildContext context, i) {
              return ItemNumber(
                number: familyList[i],
                color:widget.color,
              );
            }));
  }
}
