import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/triplet.dart';

bool isRiichiThreeKans(
  List<MahjongSet> mahjongSets,
) {
  int kanTripletCount = 0;

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongTripletSet) {
      final MahjongTripletSet parsedSet = mahjongSet;
      if (parsedSet.kan) {
        kanTripletCount++;
      }
    }
  }
  return kanTripletCount >= 3;
}
