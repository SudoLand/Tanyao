import 'package:flutter/widgets.dart';
import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/pair.dart';
import 'package:tanyao/mahjong/set/triplet.dart';
import 'package:tanyao/mahjong/tile.dart';

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
  @required MahjongTile playerWind,
  @required MahjongTile prevailingWind,
}) {
  int resultFu = baseFu;

  if (clearGate) {
    resultFu += 10;
  }
  if (selfPick) {
    resultFu += 2;
  }

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongPairSet) {
      if (mahjongSet.compareTile(MahjongTile.zhong()) ||
          mahjongSet.compareTile(MahjongTile.fa()) ||
          mahjongSet.compareTile(MahjongTile.bai()) ||
          mahjongSet.compareTile(playerWind) ||
          mahjongSet.compareTile(prevailingWind)) {
        resultFu += 2;
      }
    }

    if (mahjongSet is MahjongTripletSet) {
      if (mahjongSet.compareTile(MahjongTile.zhong()) ||
          mahjongSet.compareTile(MahjongTile.fa()) ||
          mahjongSet.compareTile(MahjongTile.bai()) ||
          mahjongSet.compareTile(playerWind) ||
          mahjongSet.compareTile(prevailingWind)) {
        resultFu += 2;
      }
    }
  }

  return resultFu;
}
