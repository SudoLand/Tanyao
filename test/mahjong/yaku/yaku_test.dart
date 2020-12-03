import 'package:flutter_test/flutter_test.dart';
import 'package:tanyao/mahjong/riichi/type.dart';
import 'package:tanyao/mahjong/riichi/yaku/fan.dart';

void main() {
  test('calculate regular yaku fan - none', () {
    final List<RiichiYakuType> yakus = [];

    final int yakuFan = calculateRegularRiichiYakuFan(yakus);

    expect(yakuFan, equals(0));
  });

  test('calculate regular yaku fan - riichi, noPoint, dora-1', () {
    final List<RiichiYakuType> yakus = [
      RiichiYakuType.riichi,
      RiichiYakuType.noPoints,
      RiichiYakuType.dora,
    ];

    final int yakuFan = calculateRegularRiichiYakuFan(yakus);

    expect(yakuFan, equals(3));
  });

  test(
      'calculate regular yaku fan - half flush, all triples, dora-2, clear gate',
      () {
    final List<RiichiYakuType> yakus = [
      RiichiYakuType.halfFlush,
      RiichiYakuType.allTriplets,
      RiichiYakuType.dora,
      RiichiYakuType.dora,
    ];

    final int yakuFan = calculateRegularRiichiYakuFan(yakus);

    expect(yakuFan, equals(7));
  });

  test(
      'calculate regular yaku fan - half flush, all triples, dora-2, side display',
      () {
    final List<RiichiYakuType> yakus = [
      RiichiYakuType.halfFlush,
      RiichiYakuType.allTriplets,
      RiichiYakuType.dora,
      RiichiYakuType.dora,
    ];

    final int yakuFan = calculateRegularRiichiYakuFan(
      yakus,
      clearGate: false,
    );

    expect(yakuFan, equals(6));
  });
}
