import 'package:tanyao/mahjong/riichi/yaku/regular/one-set-identical.dart';
import 'package:tanyao/mahjong/set/base.dart';

bool isRiichiTwoSetIdentical(
  List<MahjongSet> mahjongSets,
) {
  for (int i = 0; i < mahjongSets.length; i++) {
    for (int j = i + 1; j < mahjongSets.length; j++) {
      if (mahjongSets[i] == mahjongSets[j]) {
        final List<MahjongSet> clonedSets = [];
        clonedSets.addAll(mahjongSets);

        clonedSets.removeAt(j);
        clonedSets.removeAt(i);

        return isRiichiOneSetIdentical(clonedSets);
      }
    }
  }
  return false;
}
