import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/sequence.dart';
import 'package:tanyao/mahjong/set/triplet.dart';

bool isRiichiFourConcealedTriplets(
  List<MahjongSet> mahjongSets,
) {
  int tripletCount = 0;

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongSequenceSet) {
      return false;
    }

    if (mahjongSet is MahjongTripletSet) {
      tripletCount++;

      final MahjongTripletSet parsedSet = mahjongSet;
      if (!parsedSet.concealed) {
        return false;
      }
    }
  }
  return tripletCount >= 4;
}
