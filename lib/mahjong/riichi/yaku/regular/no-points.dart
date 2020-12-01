import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/sequence.dart';
import 'package:tanyao/mahjong/set/triplet.dart';

bool isRiichiNoPoints(
  List<MahjongSet> mahjongSets,
) {
  int sequenceCount = 0;

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongSequenceSet) {
      sequenceCount++;
    }

    if (mahjongSet is MahjongTripletSet) {
      return false;
    }
  }

  return sequenceCount >= 4;
}
