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
