import 'package:tanyao/mahjong/set/base.dart';

bool isRiichiTerminalHonorEachSet(
  List<MahjongSet> mahjongSets,
) {
  for (MahjongSet mahjongSet in mahjongSets) {
    if (!mahjongSet.isTerminalHonor) {
      return false;
    }
  }
  return true;
}
