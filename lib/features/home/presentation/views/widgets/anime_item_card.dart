import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_taski_2nd_week/core/utils/spacing.dart';
import 'package:ui_taski_2nd_week/core/utils/text_styles.dart';
import 'package:ui_taski_2nd_week/features/home/data/models/anime_model.dart';
import 'package:ui_taski_2nd_week/features/home/presentation/views/widgets/rating_container.dart';

class AnimeItemCard extends StatelessWidget {
  const AnimeItemCard({super.key, required this.anime});
  final AnimeModel anime;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 185.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: .75,
                  child: Image.asset(anime.image, fit: BoxFit.cover),
                ),
                Positioned(top: 12, right: 20, child: RatingContainer()),
              ],
            ),
          ),
          verticalSpace(8),
          Flexible(
            child: Text(
              anime.name,
              style: TextStyles.font14DarkBlueBold,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Flexible(
            child: Text(
              anime.title,
              style: TextStyles.font12GreyMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
