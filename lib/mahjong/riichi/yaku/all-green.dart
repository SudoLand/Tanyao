import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';

bool isAllGreen(
  List<MahjongSet> mahjongSets,
) {
  for (MahjongSet mahjongSet in mahjongSets) {
    for (MahjongTile tile in mahjongSet.tiles) {
      if (!tile.isBamboo && tile != MahjongTile.fa()) {
        return false;
      }

      if (tile.isBamboo) {
        if (![2, 3, 4, 6, 8].contains(tile.value)) {
          return false;
        }
      }
    }
  }
  return true;
}
