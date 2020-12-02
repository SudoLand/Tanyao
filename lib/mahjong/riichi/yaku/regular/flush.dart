import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/type.dart';

bool isRiichiFlush(
  List<MahjongSet> mahjongSets,
) {
  MahjongType targetType;

  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet.isWind || mahjongSet.isDragon) {
      return false;
    }

    if (targetType != null) {
      if (mahjongSet.tiles.first.type != targetType) {
        return false;
      }
    } else {
      targetType = mahjongSet.tiles.first.type;
    }
  }

  return true;
}
