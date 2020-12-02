import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/sequence.dart';
import 'package:tanyao/mahjong/set/triplet.dart';

bool isRiichiAllTriplets(
  List<MahjongSet> mahjongSets,
) {
  int tripletCount = 0;

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongSequenceSet) {
      return false;
    }

    if (mahjongSet is MahjongTripletSet) {
      tripletCount++;
    }
  }
  return tripletCount >= 4;
}
