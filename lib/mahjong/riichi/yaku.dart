import 'package:tanyao/mahjong/riichi/type.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/all-green.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/all-honors.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/all-terminals.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/four-concealed-triplets.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/four-winds.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/nine-gates.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/thirteen-orphans.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/big-three-dragons.dart';
import 'package:tanyao/mahjong/set/base.dart';

List<RiichiYakuType> analysisRiichiMahjongSevenPairsSetsYaku(
  List<MahjongSet> mahjongSets,
) {
  return [
    RiichiYakuType.sevenPairs,
  ];
}

List<RiichiYakuType> analysisRiichiMahjongRegularSetsYaku(
  List<MahjongSet> mahjongSets,
) {
  if (isRiichiAllGreen(mahjongSets)) {
    return [RiichiYakuType.allGreen];
  }
  if (isRiichiAllHonors(mahjongSets)) {
    return [RiichiYakuType.allHonors];
  }
  if (isRiichiAllTerminals(mahjongSets)) {
    return [RiichiYakuType.allTerminals];
  }
  if (isRiichiFourConcealedTriplets(mahjongSets)) {
    return [RiichiYakuType.fourConcealedTriplets];
  }
  if (isRiichiBigFourWinds(mahjongSets)) {
    return [RiichiYakuType.bigFourWinds];
  }
  if (isRiichiLittleFourWinds(mahjongSets)) {
    return [RiichiYakuType.littleFourWinds];
  }
  if (isRiichiNineGates(mahjongSets)) {
    return [RiichiYakuType.nineGates];
  }
  if (isRiichiThirteenOrphans(mahjongSets)) {
    return [RiichiYakuType.thirteenOrphans];
  }
  if (isRiichiBigThreeDragons(mahjongSets)) {
    return [RiichiYakuType.bigThreeDragons];
  }
  return [];
}
