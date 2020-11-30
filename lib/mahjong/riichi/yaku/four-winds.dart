import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/triplet.dart';
import 'package:tanyao/mahjong/tile.dart';

bool isBigFourWinds(
  List<MahjongSet> mahjongSets,
) {
  bool east = false;
  bool south = false;
  bool west = false;
  bool north = false;

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet is MahjongTripletSet) {
      final MahjongTripletSet castedMahjongSet = mahjongSet;

      if (castedMahjongSet.compareTile(MahjongTile.east())) {
        east = true;
      } else if (castedMahjongSet.compareTile(MahjongTile.south())) {
        south = true;
      } else if (castedMahjongSet.compareTile(MahjongTile.west())) {
        west = true;
      } else if (castedMahjongSet.compareTile(MahjongTile.north())) {
        north = true;
      }
    }
  }
  return east && south && west && north;
}
