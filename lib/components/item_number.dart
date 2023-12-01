import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:toku/modules/number_modules.dart';

class ItemNumber extends StatelessWidget {
  final ItemModule number;
  final Color color;
  const ItemNumber({required this.number, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 90,
      child: Row(
        children: [
          number.image == null
              ? const SizedBox(
                  width: 5,
                )
              : Container(
                  color: Colors.white,
                  child: Image.asset(number.image!),
                ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(number.jpName,
                    style: const TextStyle(color: Colors.white, fontSize: 15)),
                Text(number.EnName,
                    style: const TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () async {
                  // code to play sound
                  final player = AudioPlayer();
                  await player.play(AssetSource(number.sound.toString()));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                )),
          )
        ],
      ),
    );
  }
}
