import 'package:flutter_test/flutter_test.dart';
import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';

class MahjongMockSet extends MahjongSet {
  MahjongMockSet(
    MahjongTile tile,
  ) : super(
          [
            tile,
          ],
        );
}

void main() {
  test('can initialize hand with string - 1', () {
    final MahjongHand hand = MahjongHand.fromString('ea');
    expect(hand.toString(), equals('east'));
  });
}
