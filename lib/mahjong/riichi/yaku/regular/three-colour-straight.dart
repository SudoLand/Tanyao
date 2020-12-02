import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/sequence.dart';
import 'package:tanyao/mahjong/tile.dart';

bool isRiichiThreeColourStraight(
  List<MahjongSet> mahjongSets,
) {
  List<MahjongSequenceSet> dotSets = [];
  List<MahjongSequenceSet> bambooSets = [];
  List<MahjongSequenceSet> characterSets = [];

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongSequenceSet) {
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

  MahjongSet initialSet;

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

  final List<int> initialValues = [];
  for (MahjongTile tile in initialSet.tiles) {
    initialValues.add(tile.value);
  }

  initialValues.sort();

  for (MahjongSequenceSet dotSet in dotSets) {
    final List<int> values = [];
    for (MahjongTile tile in dotSet.tiles) {
      values.add(tile.value);
    }

    values.sort();

    if (values.join(',') == initialValues.join(',')) {
      dots = true;
    }
  }

  for (MahjongSequenceSet bambooSet in bambooSets) {
    final List<int> values = [];
    for (MahjongTile tile in bambooSet.tiles) {
      values.add(tile.value);
    }

    values.sort();

    if (values.join(',') == initialValues.join(',')) {
      bamboos = true;
    }
  }

  for (MahjongSequenceSet characterSet in characterSets) {
    final List<int> values = [];
    for (MahjongTile tile in characterSet.tiles) {
      values.add(tile.value);
    }

    values.sort();

    if (values.join(',') == initialValues.join(',')) {
      characters = true;
    }
  }

  return dots && bamboos && characters;
}
