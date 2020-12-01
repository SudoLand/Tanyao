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
  if (isAllGreen(mahjongSets)) {
    return [RiichiYakuType.allGreen];
  }
  if (isAllHonors(mahjongSets)) {
    return [RiichiYakuType.allHonors];
  }
  if (isAllTerminals(mahjongSets)) {
    return [RiichiYakuType.allTerminals];
  }
  if (isFourConcealedTriplets(mahjongSets)) {
    return [RiichiYakuType.fourConcealedTriplets];
  }
  if (isBigFourWinds(mahjongSets)) {
    return [RiichiYakuType.bigFourWinds];
  }
  if (isLittleFourWinds(mahjongSets)) {
    return [RiichiYakuType.littleFourWinds];
  }
  if (isNineGates(mahjongSets)) {
    return [RiichiYakuType.nineGates];
  }
  if (isThirteenOrphans(mahjongSets)) {
    return [RiichiYakuType.thirteenOrphans];
  }
  if (isBigThreeDragons(mahjongSets)) {
    return [RiichiYakuType.bigThreeDragons];
  }
  return [];
}
