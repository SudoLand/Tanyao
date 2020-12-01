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

List<RiichiYakuType> analysisRiichiMahjongYakumanSetsYaku(
  List<MahjongSet> mahjongSets,
) {
  final List<RiichiYakuType> yakumanSets = [];

  if (isRiichiAllGreen(mahjongSets)) {
    yakumanSets.add(RiichiYakuType.allGreen);
  }
  if (isRiichiAllHonors(mahjongSets)) {
    yakumanSets.add(RiichiYakuType.allHonors);
  }
  if (isRiichiAllTerminals(mahjongSets)) {
    yakumanSets.add(RiichiYakuType.allTerminals);
  }
  if (isRiichiFourConcealedTriplets(mahjongSets)) {
    yakumanSets.add(RiichiYakuType.fourConcealedTriplets);
  }
  if (isRiichiBigFourWinds(mahjongSets)) {
    yakumanSets.add(RiichiYakuType.bigFourWinds);
  }
  if (isRiichiLittleFourWinds(mahjongSets)) {
    yakumanSets.add(RiichiYakuType.littleFourWinds);
  }
  if (isRiichiNineGates(mahjongSets)) {
    yakumanSets.add(RiichiYakuType.nineGates);
  }
  if (isRiichiThirteenOrphans(mahjongSets)) {
    yakumanSets.add(RiichiYakuType.thirteenOrphans);
  }
  if (isRiichiBigThreeDragons(mahjongSets)) {
    yakumanSets.add(RiichiYakuType.bigThreeDragons);
  }

  return yakumanSets;
}

List<RiichiYakuType> analysisRiichiMahjongRegularSetsYaku(
  List<MahjongSet> mahjongSets,
) {
  final List<RiichiYakuType> regularSets = [];

  return regularSets;
}
