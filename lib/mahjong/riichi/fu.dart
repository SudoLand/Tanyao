import 'package:tanyao/mahjong/set/base.dart';

const int baseFu = 20;
const int baseSevenPairsFu = 25;

int calculateRiichiMahjongSevenPairsSetsFu(
  List<MahjongSet> mahjongSets,
) {
  return baseSevenPairsFu;
}

int calculateRiichiMahjongRegularSetsFu(
  List<MahjongSet> mahjongSets,
) {
  return baseFu;
}
