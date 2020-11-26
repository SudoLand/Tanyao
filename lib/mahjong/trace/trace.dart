import 'package:tanyao/entity/hand.dart';
import 'package:tanyao/mahjong/trace/result.dart';

MahjongTraceResult traceMahjong(MahjongHand hand) {
  final MahjongHand cloneHand = hand.clone();
  return MahjongTraceResult();
}
