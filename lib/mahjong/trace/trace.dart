import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/pair.dart';
import 'package:tanyao/mahjong/set/sequence.dart';
import 'package:tanyao/mahjong/set/triplet.dart';
import 'package:tanyao/mahjong/tile.dart';
import 'package:tanyao/mahjong/trace/result.dart';
import 'package:tanyao/mahjong/type.dart';

List<MahjongSet> findMahjongFirstAvailableCombos(
  MahjongHand hand,
  MahjongTile target,
) {
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
      possibleSets.add(MahjongPairSet(target));
    }

    if (hand.getTileCount(target) == 3) {
      possibleSets.add(MahjongTripletSet(target));
    }

    if (target.value >= 8) {
      return possibleSets;
    }

    if (hand.getTileCount(target + 1) >= 1 &&
        hand.getTileCount(target + 2) >= 1) {
      possibleSets.add(MahjongSequenceSet([
        target,
        target + 1,
        target + 2,
      ]));
    }

    return possibleSets;
  }

  return [];
}

MahjongTraceResult traceMahjong(MahjongHand hand) {
  final MahjongHand cloneHand = hand.clone();

  if (cloneHand.getTotalTileCount() != 14) {
    return null;
  }

  for (MahjongTile tile in MahjongTile.getAllAvailableTiles()) {
    final List<MahjongSet> combos = findMahjongFirstAvailableCombos(
      cloneHand,
      tile,
    );

    if (combos.isNotEmpty) {
      print(combos);
    }
  }
  return MahjongTraceResult();
}
