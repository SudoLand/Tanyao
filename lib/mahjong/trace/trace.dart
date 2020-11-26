import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/trace/result.dart';

MahjongTraceResult _recursiveTraceMahjong(MahjongHand hand) {
  final MahjongHand cloneHand = hand.clone();

  return MahjongTraceResult();
}

MahjongTraceResult traceMahjong(MahjongHand hand) {
  final MahjongHand cloneHand = hand.clone();

  if (cloneHand.totalTiles() != 14) {
    return null;
  }
  return _recursiveTraceMahjong(hand);
}
