import 'package:flutter_test/flutter_test.dart';
import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/trace/finalize.dart';
import 'package:tanyao/mahjong/trace/possible.dart';

// spell-checker:disable
void main() {
  test('finalize result - simple', () {
    final List<MahjongTracePossibleResult> results =
        finalizeMahjongPossibleResults(
      MahjongHand.fromString('1s2s3s'),
    );

    expect(results.length, equals(1));
    expect(results[0].hand.toString(), equals(''));
    expect(results[0].mahjongSets.length, equals(1));
    expect(results[0].mahjongSets[0].toString(), equals('1s,2s,3s'));
  });
}
// spell-checker:enable
