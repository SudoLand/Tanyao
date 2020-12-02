import 'package:tanyao/mahjong/set/base.dart';

bool isRiichiTerminalEachSet(
  List<MahjongSet> mahjongSets,
) {
  for (MahjongSet mahjongSet in mahjongSets) {
    if (!mahjongSet.isTerminal) {
      return false;
    }
  }
  return true;
}
