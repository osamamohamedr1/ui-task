import 'package:ui_taski_2nd_week/core/utils/assets.dart';

class AnimeModel {
  final String name, title, image;

  AnimeModel({required this.name, required this.title, required this.image});
}

List<AnimeModel> animeList = [
  AnimeModel(
    name: "Detective Conan",
    title: "Mystery",
    image: Assets.imagesAnime1,
  ),
  AnimeModel(
    name: "Hunter x Hunter",
    title: "Adventure",
    image: Assets.imagesAnime4,
  ),
  AnimeModel(
    name: "Attack on Titan",
    title: "Attack on Titan",
    image: Assets.imagesAnime5,
  ),
  AnimeModel(
    name: "My Hero Academia",
    title: "My Hero Academia",
    image: Assets.imagesAnime4,
  ),
  AnimeModel(
    name: "Demon Slayer",
    title: "Demon Slayer",
    image: Assets.imagesAnime5,
  ),
];
