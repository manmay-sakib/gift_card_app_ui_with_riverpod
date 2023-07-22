import 'dart:ui';
import '../gen/assets.gen.dart';
import '../gen/colors.gen.dart';

enum CardCategory {
  birthday,
  christmas,
  general,
  congratulation,
}

class CardModel {
  final int id;
  final String name;
  final String thumbnailPath;
  final Color bgColor;
  final List<CardCategory> categories;

  const CardModel({
    required this.id,
    required this.name,
    required this.thumbnailPath,
    required this.bgColor,
    required this.categories,
  });

  //Sample Data
  static List<CardModel> sampleCards = [
    CardModel(
      id: 1,
      name: 'Christmas Doge',
      thumbnailPath: Assets.cards.dogeXmas.path,
      categories: [CardCategory.general, CardCategory.christmas],
      bgColor: ColorName.bgBlue,
    ),
    CardModel(
      id: 2,
      name: 'Flowers Bouquet',
      thumbnailPath: Assets.cards.flower.path,
      categories: [
        CardCategory.general,
        CardCategory.christmas,
        CardCategory.congratulation
      ],
      bgColor: ColorName.bgBlue,
    ),
    CardModel(
      id: 3,
      name: 'Ho Ho Ho',
      thumbnailPath: Assets.cards.hohoho.path,
      categories: [CardCategory.general, CardCategory.christmas],
      bgColor: ColorName.bgOrange,
    ),
    CardModel(
      id: 4,
      name: 'Choco Cake',
      thumbnailPath: Assets.cards.cakeBday.path,
      categories: [CardCategory.general, CardCategory.birthday],
      bgColor: ColorName.bgOrange,
    ),
    CardModel(
      id: 5,
      name: 'Happy Birthday',
      thumbnailPath: Assets.cards.happyBday.path,
      categories: [CardCategory.general, CardCategory.birthday],
      bgColor: ColorName.bgOrange,
    ),
    CardModel(
      id: 6,
      name: 'Giving Season',
      thumbnailPath: Assets.cards.giftXmas.path,
      categories: [CardCategory.general, CardCategory.christmas],
      bgColor: ColorName.bgOrange,
    ),
    CardModel(
      id: 7,
      name: 'Birthday Gift',
      thumbnailPath: Assets.cards.giftHappy.path,
      categories: [CardCategory.general, CardCategory.birthday],
      bgColor: ColorName.bgBlue,
    ),
    CardModel(
      id: 8,
      name: 'Holly Jolly Socks',
      thumbnailPath: Assets.cards.sockXmas.path,
      categories: [CardCategory.general, CardCategory.christmas],
      bgColor: ColorName.bgBlue,
    ),
  ];
}
