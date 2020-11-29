import 'package:flutter_test/flutter_test.dart';
import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/trace/possible.dart';

// spell-checker:disable
void main() {
  test('possible result can find next - simple', () {
    final MahjongTracePossibleResult target = MahjongTracePossibleResult(
      MahjongHand.fromString('1s2s3s'),
      [],
    );

    final List<MahjongTracePossibleResult> results = target.findNext();

    expect(results.length, equals(1));
    expect(results[0].hand.toString(), equals(''));
    expect(results[0].mahjongSets.length, equals(1));
    expect(results[0].mahjongSets[0].toString(), equals('1s,2s,3s'));
  });

  test('possible result can find next - duo possibility', () {
    final MahjongTracePossibleResult target = MahjongTracePossibleResult(
      MahjongHand.fromString('1s1s1s'),
      [],
    );

    final List<MahjongTracePossibleResult> results = target.findNext();

    expect(results.length, equals(2));
    expect(results[0].hand.toString(), equals('1s'));
    expect(results[1].hand.toString(), equals(''));
    expect(results[0].mahjongSets.length, equals(1));
    expect(results[0].mahjongSets[0].toString(), equals('1s,1s'));
    expect(results[1].mahjongSets.length, equals(1));
    expect(results[1].mahjongSets[0].toString(), equals('1s,1s,1s'));
  });
}
// spell-checker:enable
