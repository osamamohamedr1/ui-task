import 'package:flutter/material.dart';
import 'package:ui_taski_2nd_week/core/utils/spacing.dart';
import 'package:ui_taski_2nd_week/core/utils/text_styles.dart';
import 'package:ui_taski_2nd_week/features/home/data/models/character_model.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({super.key, required this.characterModel});

  final CharacterModel characterModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(characterModel.image),

          // child: Image.asset(characterModel.image, fit: BoxFit.fill),
        ),
        verticalSpace(8),
        Flexible(
          child: Text(
            characterModel.name,
            style: TextStyles.font16DarkBlueSemiBold,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Flexible(
          child: Text(
            characterModel.title,
            style: TextStyles.font14GreySemiBold,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
