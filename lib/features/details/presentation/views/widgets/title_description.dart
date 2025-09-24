import 'package:flutter/material.dart';
import 'package:ui_taski_2nd_week/core/utils/text_styles.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 14,
      children: [
        Text(
          'Seamless Anime\nExperience, Ad-Free.',
          textAlign: TextAlign.center,
          style: TextStyles.font24DarkBlueBold,
        ),

        Text(
          'Enjoy unlimited anime streaming without\ninterruptions.',
          textAlign: TextAlign.center,
          style: TextStyles.font14GreySemiBold,
        ),
      ],
    );
  }
}
