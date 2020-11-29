import 'package:flutter_test/flutter_test.dart';
import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/trace/possible.dart';

// spell-checker:disable
void main() {
  test('possible result can find next', () {
    final MahjongTracePossibleResult target = MahjongTracePossibleResult(
      MahjongHand.fromString('1s2s3s'),
      [],
    );

    final List<MahjongTracePossibleResult> results = target.findNext();

    expect(results.length, equals(1));
    expect(results[0].hand.toString(), equals(''));
    expect(results[0].mahjongSets.length, equals(1));
    expect(results[0].mahjongSets[0], equals(''));
  });
}
// spell-checker:enable
