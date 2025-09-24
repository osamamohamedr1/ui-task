import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:ui_taski_2nd_week/features/details/presentation/views/details_view.dart';
import 'package:ui_taski_2nd_week/features/home/data/models/anime_model.dart';
import 'package:ui_taski_2nd_week/features/home/presentation/views/widgets/anime_item_card.dart';

class AnimeList extends StatelessWidget {
  const AnimeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 2.6,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: animeList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 0 : 8,
              right: index == animeList.length - 1 ? 16 : 8,
            ),
            child: GestureDetector(
              onTap: () {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: DetailsView(),
                  withNavBar: false,
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              child: AnimeItemCard(anime: animeList[index]),
            ),
          );
        },
      ),
    );
  }
}
