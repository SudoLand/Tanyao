import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';

bool isRiichiAllHonors(
  List<MahjongSet> mahjongSets,
) {
  for (MahjongSet mahjongSet in mahjongSets) {
    for (MahjongTile tile in mahjongSet.tiles) {
      if (!tile.isHonor) {
        return false;
      }
    }
  }
  return true;
}
