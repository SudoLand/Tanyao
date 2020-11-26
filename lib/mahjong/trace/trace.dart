import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/tile.dart';
import 'package:tanyao/mahjong/trace/result.dart';

List<MahjongTile> _getCombo(MahjongHand hand, MahjongTile target) {}

MahjongTraceResult _recursiveTraceMahjong(MahjongHand hand) {
  final MahjongHand cloneHand = hand.clone();

  for (int i = 1; i <= 9; i++) {}
  return MahjongTraceResult();
}

MahjongTraceResult traceMahjong(MahjongHand hand) {
  final MahjongHand cloneHand = hand.clone();

  if (cloneHand.totalTiles() != 14) {
    return null;
  }
  return _recursiveTraceMahjong(hand);
}
