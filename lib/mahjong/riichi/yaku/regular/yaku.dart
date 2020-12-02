import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/triplet.dart';
import 'package:tanyao/mahjong/tile.dart';

bool _isRiichiYakuTarget(List<MahjongSet> mahjongSets, MahjongTile target) {
  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongTripletSet) {
      final MahjongTripletSet parsedMahjongSet = mahjongSet;
      if (parsedMahjongSet.singletonTile == target) {
        return true;
      }
    }
  }
  return false;
}

bool isRiichiYakuZhong(
  List<MahjongSet> mahjongSets,
) {
  return _isRiichiYakuTarget(
    mahjongSets,
    MahjongTile.zhong(),
  );
}

bool isRiichiYakuFa(
  List<MahjongSet> mahjongSets,
) {
  return _isRiichiYakuTarget(
    mahjongSets,
    MahjongTile.fa(),
  );
}

bool isRiichiYakuBai(
  List<MahjongSet> mahjongSets,
) {
  return _isRiichiYakuTarget(
    mahjongSets,
    MahjongTile.bai(),
  );
}

bool isRiichiYakuPrevailing(
  List<MahjongSet> mahjongSets,
  MahjongTile prevailingTile,
) {
  return _isRiichiYakuTarget(
    mahjongSets,
    prevailingTile,
  );
}

bool isRiichiYakuPlayer(
  List<MahjongSet> mahjongSets,
  MahjongTile playerTile,
) {
  return _isRiichiYakuTarget(
    mahjongSets,
    playerTile,
  );
}
