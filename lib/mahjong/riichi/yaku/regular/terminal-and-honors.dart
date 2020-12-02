import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/pair.dart';
import 'package:tanyao/mahjong/set/sequence.dart';

bool isRiichiTerminalAndHonors(
  List<MahjongSet> mahjongSets,
) {
  for (MahjongSet mahjongSet in mahjongSets) {
    if (!(mahjongSet is MahjongPairSet) &&
        !(mahjongSet is MahjongSequenceSet)) {
      return false;
    }

    if (!mahjongSet.isTerminalHonor) {
      return false;
    }
  }
  return true;
}
