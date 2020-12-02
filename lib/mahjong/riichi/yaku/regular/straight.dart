import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/sequence.dart';
import 'package:tanyao/mahjong/tile.dart';

bool _isRiichiStraightSequences(List<MahjongSequenceSet> sequences) {
  bool set123 = false;
  bool set456 = false;
  bool set789 = false;

  for (MahjongSequenceSet sequence in sequences) {
    List<int> values = [];
    for (MahjongTile tile in sequence.tiles) {
      values.add(tile.value);
    }

    values.sort();

    if (values.join(',') == '1,2,3') {
      set123 = true;
    }

    if (values.join(',') == '4,5,6') {
      set456 = true;
    }

    if (values.join(',') == '7,8,9') {
      set789 = true;
    }
  }

  return set123 && set456 && set789;
}

bool isRiichiStraight(
  List<MahjongSet> mahjongSets,
) {
  List<MahjongSequenceSet> dotSequences = [];
  List<MahjongSequenceSet> bambooSequences = [];
  List<MahjongSequenceSet> characterSequences = [];

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongSequenceSet) {
      if (mahjongSet.isDot) {
        dotSequences.add(mahjongSet);
      }

      if (mahjongSet.isBamboo) {
        bambooSequences.add(mahjongSet);
      }

      if (mahjongSet.isCharacter) {
        characterSequences.add(mahjongSet);
      }
    }
  }

  return _isRiichiStraightSequences(dotSequences) ||
      _isRiichiStraightSequences(bambooSequences) ||
      _isRiichiStraightSequences(characterSequences);
}
