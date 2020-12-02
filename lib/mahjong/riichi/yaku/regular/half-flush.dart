import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/type.dart';

bool isRiichiHalfFlush(
  List<MahjongSet> mahjongSets,
) {
  MahjongType targetType;

  bool hasDragonsOrWinds = false;

  loop:
  for (MahjongSet mahjongSet in mahjongSets) {
    if (mahjongSet.isWind || mahjongSet.isDragon) {
      hasDragonsOrWinds = true;
      continue loop;
    }

    if (targetType != null) {
      if (mahjongSet.tiles.first.type != targetType) {
        return false;
      }
    } else {
      targetType = mahjongSet.tiles.first.type;
    }
  }

  return hasDragonsOrWinds;
}
