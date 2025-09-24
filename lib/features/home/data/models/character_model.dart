import 'package:ui_taski_2nd_week/core/utils/assets.dart';

class CharacterModel {
  final String name, title, image;

  CharacterModel({
    required this.name,
    required this.title,
    required this.image,
  });
}

List<CharacterModel> charactersList = [
  CharacterModel(
    name: 'Gon Freecss',
    title: 'Hunter x Hunter',
    image: Assets.imagesGon,
  ),
  CharacterModel(
    name: 'Naruto Uzumaki',
    title: 'Naruto',
    image: Assets.imagesNaroto,
  ),
  CharacterModel(name: 'Luffy', title: 'One Piece', image: Assets.imagesLuffy),

  CharacterModel(
    name: 'Naruto Uzumaki',
    title: 'Naruto',
    image: Assets.imagesNaroto,
  ),
  CharacterModel(name: 'Luffy', title: 'One Piece', image: Assets.imagesLuffy),
];
