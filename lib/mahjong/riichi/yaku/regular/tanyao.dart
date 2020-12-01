import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';

bool isRiichiTanyao(
  List<MahjongSet> mahjongSets,
) {
  for (MahjongSet mahjongSet in mahjongSets) {
    for (MahjongTile tile in mahjongSet.tiles) {
      if (tile.isTerminalHonor) {
        return false;
      }
    }
  }

  return true;
}
