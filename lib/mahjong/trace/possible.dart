import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/set/base.dart';

class MahjongTracePossibleResult {
  final MahjongHand restHand;
  final List<MahjongSet> setFound;

  MahjongTracePossibleResult(this.restHand, this.setFound);
}
