import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/pair.dart';
import 'package:tanyao/mahjong/set/triplet.dart';
import 'package:tanyao/mahjong/tile.dart';
import 'package:tanyao/mahjong/trace/result.dart';
import 'package:tanyao/mahjong/type.dart';

List<MahjongSet> _getCombos(MahjongHand hand, MahjongTile target) {
  final MahjongType type = target.type;

  // If current type is **wind** or **dragon**
  if (type == MahjongType.wind || type == MahjongType.dragon) {
    if (hand.getTileCount(target) == 3) {
      return [MahjongTripletSet(target)];
    }
    if (hand.getTileCount(target) == 2) {
      return [MahjongPairSet(target)];
    }
  }

  // If current type is **number**
  if (type == MahjongType.bamboo ||
      type == MahjongType.character ||
      type == MahjongType.dot) {
    final List<MahjongSet> possibleSets = [];

    if (hand.getTileCount(target) == 3) {
      possibleSets.add(MahjongTripletSet(target));
    }

    return possibleSets;
  }

  return [];
}

MahjongTraceResult _recursiveTraceMahjong(MahjongHand hand) {
  final MahjongHand cloneHand = hand.clone();

  for (MahjongTile tile in MahjongTile.getAllAvailableTiles()) {
    final List<MahjongSet> combos = _getCombos(cloneHand, tile);

    if (combos.isNotEmpty) {
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
