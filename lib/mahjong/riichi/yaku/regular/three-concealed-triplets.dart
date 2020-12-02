import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/triplet.dart';

bool isRiichiThreeConcealedTriplets(
  List<MahjongSet> mahjongSets,
) {
  int concealedTripletCount = 0;

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongTripletSet) {
      final MahjongTripletSet parsedSet = mahjongSet;
      if (parsedSet.concealed) {
        concealedTripletCount++;
      }
    }
  }
  return concealedTripletCount >= 3;
}
