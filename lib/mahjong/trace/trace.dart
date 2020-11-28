import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/set/triplet.dart';
import 'package:tanyao/mahjong/tile.dart';
import 'package:tanyao/mahjong/trace/result.dart';
import 'package:tanyao/mahjong/type.dart';

MahjongSet _getCombo(MahjongHand hand, MahjongTile target) {
  if (target.type == MahjongType.wind || target.type == MahjongType.dragon) {
    if (hand.getTileCount(target) == 3) {
      return MahjongTripletSet(target);
    }
  }

  return null;
}

MahjongTraceResult _recursiveTraceMahjong(MahjongHand hand) {
  final MahjongHand cloneHand = hand.clone();

  for (int i = 1; i <= 9; i++) {
    // Numbers
  }
  for (int i = 1; i <= 4; i++) {
    // Winds
    final MahjongSet combo = _getCombo(
      cloneHand,
      MahjongTile(MahjongType.wind, i),
    );
  }
  for (int i = 1; i <= 3; i++) {
    // Dragons
    final MahjongSet combo = _getCombo(
      cloneHand,
      MahjongTile(MahjongType.dragon, i),
    );
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
