import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';
import 'package:tanyao/mahjong/trace/find.dart';
import 'package:tanyao/mahjong/trace/result.dart';

MahjongTraceResult traceMahjong(
  MahjongHand hand, [
  MahjongTraceResult result,
]) {
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
