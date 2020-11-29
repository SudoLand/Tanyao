import 'package:flutter_test/flutter_test.dart';
import 'package:tanyao/mahjong/hand.dart';

// spell-checker:disable
void main() {
  test('can initialize hand with string - 1', () {
    final MahjongHand hand = MahjongHand.fromString('ea');
    expect(hand.toString(), equals('east'));
  });
  test('can initialize hand with string - 2', () {
    final MahjongHand hand = MahjongHand.fromString('2s2s3peanoba');
    expect(hand.toString(), equals('3p,2s,2s,east,north,bai'));
  });
}
// spell-checker:enable
