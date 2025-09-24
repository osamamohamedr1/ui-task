import 'package:flutter/material.dart';
import 'package:ui_taski_2nd_week/features/home/data/models/character_model.dart';
import 'package:ui_taski_2nd_week/features/home/presentation/views/widgets/character_item.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 0 : 8,
              right: index == 3 ? 16 : 8,
            ),
            child: CharacterItem(characterModel: charactersList[index]),
          );
        },
      ),
    );
  }
}
