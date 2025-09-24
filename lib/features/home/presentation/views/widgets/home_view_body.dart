import 'package:flutter/material.dart';
import 'package:ui_taski_2nd_week/core/utils/spacing.dart';
import 'package:ui_taski_2nd_week/core/utils/text_styles.dart';
import 'package:ui_taski_2nd_week/features/home/presentation/views/widgets/anime_list.dart';
import 'package:ui_taski_2nd_week/features/home/presentation/views/widgets/category_filter_list.dart';
import 'package:ui_taski_2nd_week/features/home/presentation/views/widgets/character_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(65),
          Text('Where Anime Comes Alive', style: TextStyles.font24DarkBlueBold),
          verticalSpace(24),
          CategoryFilterList(),
          verticalSpace(20),
          AnimeList(),
          verticalSpace(24),
          Text('Top Characters', style: TextStyles.font24BlackBold),
          verticalSpace(24),
          CharactersList(),
        ],
      ),
    );
  }
}
