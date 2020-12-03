import 'package:tanyao/mahjong/riichi/type.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/all-triplets.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/flush.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/half-flush.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/little-three-dragons.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/no-points.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/one-set-identical.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/straight.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/tanyao.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/terminal-and-honors.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/terminal-each-set.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/terminal-honor-each-set.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/three-colour-straight.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/three-colour-triplets.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/three-concealed-triplets.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/three-kans.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/two-set-identical.dart';
import 'package:tanyao/mahjong/riichi/yaku/regular/yaku.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/all-green.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/all-honors.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/all-terminals.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/big-three-dragons.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/four-concealed-triplets.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/four-winds.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/nine-gates.dart';
import 'package:tanyao/mahjong/riichi/yaku/yakuman/thirteen-orphans.dart';
import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';

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
  List<MahjongSet> mahjongSets, {
  MahjongTile prevailingTile,
  MahjongTile playerTile,
}) {
  final List<RiichiYakuType> regularSets = [];

  if (isRiichiAllTriplets(mahjongSets)) {
    regularSets.add(RiichiYakuType.allTriplets);
  }

  if (isRiichiFlush(mahjongSets)) {
    regularSets.add(RiichiYakuType.flush);
  } else if (isRiichiHalfFlush(mahjongSets)) {
    regularSets.add(RiichiYakuType.halfFlush);
  }

  if (isRiichiLittleThreeDragons(mahjongSets)) {
    regularSets.add(RiichiYakuType.littleThreeDragons);
  }
  if (isRiichiNoPoints(mahjongSets)) {
    regularSets.add(RiichiYakuType.noPoints);
  }

  if (isRiichiTwoSetIdentical(mahjongSets)) {
    regularSets.add(RiichiYakuType.twoSetIdentical);
  } else if (isRiichiOneSetIdentical(mahjongSets)) {
    regularSets.add(RiichiYakuType.oneSetIdentical);
  }

  if (isRiichiStraight(mahjongSets)) {
    regularSets.add(RiichiYakuType.straight);
  }
  if (isRiichiTanyao(mahjongSets)) {
    regularSets.add(RiichiYakuType.tanyao);
  }

  if (isRiichiTerminalEachSet(mahjongSets)) {
    regularSets.add(RiichiYakuType.terminalEachSet);
  } else if (isRiichiTerminalAndHonors(mahjongSets)) {
    regularSets.add(RiichiYakuType.terminalAndHonors);
  } else if (isRiichiTerminalHonorEachSet(mahjongSets)) {
    regularSets.add(RiichiYakuType.terminalHonorEachSet);
  }

  if (isRiichiThreeColourStraight(mahjongSets)) {
    regularSets.add(RiichiYakuType.threeColourStraight);
  }
  if (isRiichiThreeColourTriplets(mahjongSets)) {
    regularSets.add(RiichiYakuType.threeColourTriplets);
  }
  if (isRiichiThreeConcealedTriplets(mahjongSets)) {
    regularSets.add(RiichiYakuType.threeConcealedTriplets);
  }
  if (isRiichiThreeKans(mahjongSets)) {
    regularSets.add(RiichiYakuType.threeKans);
  }

  if (isRiichiYakuZhong(mahjongSets)) {
    regularSets.add(RiichiYakuType.yakuZhong);
  }
  if (isRiichiYakuBai(mahjongSets)) {
    regularSets.add(RiichiYakuType.yakuBai);
  }
  if (isRiichiYakuFa(mahjongSets)) {
    regularSets.add(RiichiYakuType.yakuFa);
  }

  if (prevailingTile is MahjongTile) {
    if (isRiichiYakuPrevailing(mahjongSets, prevailingTile)) {
      regularSets.add(RiichiYakuType.yakuPrevailing);
    }
  }

  if (playerTile is MahjongTile) {
    if (isRiichiYakuPlayer(mahjongSets, playerTile)) {
      regularSets.add(RiichiYakuType.yakuPlayer);
    }
  }

  return regularSets;
}
