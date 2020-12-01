import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/pair.dart';
import 'package:tanyao/mahjong/set/triplet.dart';
import 'package:tanyao/mahjong/tile.dart';

bool isBigThreeDragons(
  List<MahjongSet> mahjongSets,
) {
  bool zhong = false;
  bool fa = false;
  bool bai = false;

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongTripletSet) {
      final MahjongTripletSet castedMahjongSet = mahjongSet;

      if (castedMahjongSet.compareTile(
        MahjongTile.zhong(),
      )) {
        zhong = true;
      } else if (castedMahjongSet.compareTile(
        MahjongTile.fa(),
      )) {
        fa = true;
      } else if (castedMahjongSet.compareTile(
        MahjongTile.bai(),
      )) {
        bai = true;
      }
    }
  }
  return zhong && fa && bai;
}

/// Not Yakuman
bool isLittleThreeDragons(
  List<MahjongSet> mahjongSets,
) {
  int tripletCount = 0;

  bool zhong = false;
  bool fa = false;
  bool bai = false;

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongTripletSet) {
      tripletCount++;
      final MahjongTripletSet castedMahjongSet = mahjongSet;

      if (castedMahjongSet.compareTile(
        MahjongTile.zhong(),
      )) {
        zhong = true;
      } else if (castedMahjongSet.compareTile(
        MahjongTile.fa(),
      )) {
        fa = true;
      } else if (castedMahjongSet.compareTile(
        MahjongTile.bai(),
      )) {
        bai = true;
      }
    }

    if (mahjongSet is MahjongPairSet) {
      final MahjongPairSet castedMahjongSet = mahjongSet;

      if (castedMahjongSet.compareTile(
        MahjongTile.zhong(),
      )) {
        zhong = true;
      } else if (castedMahjongSet.compareTile(
        MahjongTile.fa(),
      )) {
        fa = true;
      } else if (castedMahjongSet.compareTile(
        MahjongTile.bai(),
      )) {
        bai = true;
      }
    }
  }
  return zhong && fa && bai && tripletCount >= 2;
}
