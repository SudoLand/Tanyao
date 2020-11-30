import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/pair.dart';

const int baseFu = 20;
const int baseSevenPairsFu = 25;

int calculateRiichiMahjongSevenPairsSetsFu(
  List<MahjongSet> mahjongSets,
) {
  return baseSevenPairsFu;
}

int calculateRiichiMahjongRegularSetsFu(
  List<MahjongSet> mahjongSets, {
  bool clearGate = false,
  bool selfPick = false,
}) {
  int resultFu = baseFu;

  if (clearGate) {
    resultFu += 10;
  }
  if (selfPick) {
    resultFu += 2;
  }

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongPairSet) {}
  }

  return resultFu;
}
