import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/sequence.dart';
import 'package:tanyao/mahjong/set/triplet.dart';

bool isRiichiThreeColourStraight(
  List<MahjongSet> mahjongSets,
) {
  List<MahjongSequenceSet> dotSets = [];
  List<MahjongSequenceSet> bambooSets = [];
  List<MahjongSequenceSet> characterSets = [];

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongSequenceSet) {
      sequenceCount++;
    }
  }

  return sequenceCount >= 4;
}
