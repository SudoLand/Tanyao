import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/triplet.dart';

bool isRiichiThreeColourStraight(
  List<MahjongSet> mahjongSets,
) {
  List<MahjongTripletSet> dotSets = [];
  List<MahjongTripletSet> bambooSets = [];
  List<MahjongTripletSet> characterSets = [];

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongTripletSet) {
      if (mahjongSet.isDot) {
        dotSets.add(mahjongSet);
      }

      if (mahjongSet.isBamboo) {
        bambooSets.add(mahjongSet);
      }

      if (mahjongSet.isCharacter) {
        characterSets.add(mahjongSet);
      }
    }
  }

  if (dotSets.isEmpty || bambooSets.isEmpty || characterSets.isEmpty) {
    return false;
  }

  MahjongTripletSet initialSet;

  if (dotSets.length == 1) {
    initialSet = dotSets.first;
  } else if (bambooSets.length == 1) {
    initialSet = bambooSets.first;
  } else if (characterSets.length == 1) {
    initialSet = characterSets.first;
  }

  if (initialSet == null) {
    return false;
  }

  bool dots = false;
  bool bamboos = false;
  bool characters = false;

  for (MahjongTripletSet dotSet in dotSets) {
    if (dotSet.singletonTile == initialSet.singletonTile) {
      dots = true;
    }
  }

  for (MahjongTripletSet bambooSet in bambooSets) {
    if (bambooSet.singletonTile == initialSet.singletonTile) {
      bamboos = true;
    }
  }

  for (MahjongTripletSet characterSet in characterSets) {
    if (characterSet.singletonTile == initialSet.singletonTile) {
      characters = true;
    }
  }

  return dots && bamboos && characters;
}
