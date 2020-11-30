import 'package:tanyao/mahjong/riichi/type.dart';
import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/pair.dart';
import 'package:tanyao/mahjong/set/sequence.dart';
import 'package:tanyao/mahjong/set/triplet.dart';

bool _isRiichiSevenPairs(List<MahjongSet> mahjongSets) {
  if (mahjongSets.length != 7) {
    return false;
  }

  for (MahjongSet eachSet in mahjongSets) {
    if (!(eachSet is MahjongPairSet)) {
      return false;
    }
  }

  return true;
}

RiichiResultType identifyRiichiMahjongSets(List<MahjongSet> mahjongSets) {
  if (_isRiichiSevenPairs(mahjongSets)) {
    return RiichiResultType.sevenPairs;
  }

  if (mahjongSets.length != 5) {
    return RiichiResultType.invalid;
  }

  int tripletAndSequenceCounts = 0;
  int pairCounts = 0;

  countLoop:
  for (MahjongSet eachSet in mahjongSets) {
    if (eachSet is MahjongTripletSet) {
      tripletAndSequenceCounts++;
      continue countLoop;
    }

    if (eachSet is MahjongSequenceSet) {
      tripletAndSequenceCounts++;
      continue countLoop;
    }

    if (eachSet is MahjongPairSet) {
      pairCounts++;
      continue countLoop;
    }
  }

  if (tripletAndSequenceCounts == 4 && pairCounts == 1) {
    return RiichiResultType.regular;
  }

  return RiichiResultType.invalid;
}
