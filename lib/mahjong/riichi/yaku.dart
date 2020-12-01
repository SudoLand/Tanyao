import 'package:tanyao/mahjong/riichi/type.dart';
import 'package:tanyao/mahjong/riichi/yaku/all-green.dart';
import 'package:tanyao/mahjong/riichi/yaku/all-honors.dart';
import 'package:tanyao/mahjong/riichi/yaku/all-terminals.dart';
import 'package:tanyao/mahjong/riichi/yaku/four-concealed-triplets.dart';
import 'package:tanyao/mahjong/riichi/yaku/four-winds.dart';
import 'package:tanyao/mahjong/riichi/yaku/nine-gates.dart';
import 'package:tanyao/mahjong/riichi/yaku/thirteen-orphans.dart';
import 'package:tanyao/mahjong/riichi/yaku/three-dragons.dart';
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
