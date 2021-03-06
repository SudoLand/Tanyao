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

  test('finalize result - duplicated result', () {
    final List<MahjongTracePossibleResult> results =
        finalizeMahjongPossibleResults(
      MahjongHand.fromString('1s1s1s2s3s'),
    );

    expect(results.length, equals(1));
    expect(results[0].toString(), equals("[1s,1s],[1s,2s,3s]"));
  });

  test('finalize result - full hand', () {
    final List<MahjongTracePossibleResult> results =
        finalizeMahjongPossibleResults(
      MahjongHand.fromString('1s2s3s4s5s6s7s8s9s1p2p3pnono'),
    );

    expect(results.length, equals(1));
    expect(results[0].hand.toString(), equals(''));
    expect(results[0].mahjongSets.length, equals(5));
  });

  test('finalize result - double possible (without remove duplicated)', () {
    final List<MahjongTracePossibleResult> results =
        finalizeMahjongPossibleResults(
      MahjongHand.fromString('1s1s1s2s2s2s3s3s3s1p2p3pnono'),
      removeDuplicate: false,
    );

    expect(results.length, equals(4));
  });

  test('finalize result - double possible', () {
    final List<MahjongTracePossibleResult> results =
        finalizeMahjongPossibleResults(
      MahjongHand.fromString('1s1s1s2s2s2s3s3s3s1p2p3pnono'),
    );

    expect(results.length, equals(3));
  });
}
// spell-checker:enable
