import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/trace/result.dart';

MahjongTraceResult traceMahjong(MahjongHand hand) {
  final MahjongHand cloneHand = hand.clone();

  if (cloneHand.totalTiles() != 14) {
    return null;
  }
  return MahjongTraceResult();
}
