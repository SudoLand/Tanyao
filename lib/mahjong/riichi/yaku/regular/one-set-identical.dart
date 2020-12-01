import 'package:tanyao/mahjong/set/base.dart';

bool isRiichiOneSetIdentical(
  List<MahjongSet> mahjongSets,
) {
  for (int i = 0; i < mahjongSets.length; i++) {
    for (int j = i + 1; j < mahjongSets.length; j++) {
      if (mahjongSets[i] == mahjongSets[j]) {
        return true;
      }
    }
  }
  return false;
}
