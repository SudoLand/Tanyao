import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/triplet.dart';
import 'package:tanyao/mahjong/tile.dart';
import 'package:tanyao/mahjong/trace/result.dart';
import 'package:tanyao/mahjong/type.dart';

MahjongSet _getCombo(MahjongHand hand, MahjongTile target) {
  final MahjongType type = target.type;

  // If current type is **wind** or **dragon**
  if (type == MahjongType.wind || type == MahjongType.dragon) {
    if (hand.getTileCount(target) == 3) {
      return MahjongTripletSet(target);
    }
  }

  // If current type is **number**
  if (type == MahjongType.bamboo ||
      type == MahjongType.character ||
      type == MahjongType.dot) {
    if (hand.getTileCount(target) == 3) {
      return MahjongTripletSet(target);
    }
  }

  return null;
}

MahjongTraceResult _recursiveTraceMahjong(MahjongHand hand) {
  final MahjongHand cloneHand = hand.clone();

  for (MahjongTile tile in MahjongTile.getAllAvailableTiles()) {
    final MahjongSet combo = _getCombo(cloneHand, tile);
    if (combo != null) {
      // TODO
    }
  }
  return MahjongTraceResult();
}

MahjongTraceResult traceMahjong(MahjongHand hand) {
  final MahjongHand cloneHand = hand.clone();

  if (cloneHand.getTotalTileCount() != 14) {
    return null;
  }
  return _recursiveTraceMahjong(hand);
}
