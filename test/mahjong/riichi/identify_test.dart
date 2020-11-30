import 'package:flutter_test/flutter_test.dart';
import 'package:tanyao/mahjong/riichi/identify.dart';
import 'package:tanyao/mahjong/riichi/type.dart';
import 'package:tanyao/mahjong/set/pair.dart';
import 'package:tanyao/mahjong/tile.dart';
import 'package:tanyao/mahjong/type.dart';

void main() {
  final MahjongTile northTile = MahjongTile(MahjongType.wind, 4);

  test('identify invalid sets - empty', () {
    final RiichiResultType result = identifyRiichiMahjongSets([]);

    expect(result, equals(RiichiResultType.invalid));
  });

  test('identify invalid sets - wrong count', () {
    final RiichiResultType result = identifyRiichiMahjongSets([
      MahjongPairSet(northTile),
      MahjongPairSet(northTile),
      MahjongPairSet(northTile),
      MahjongPairSet(northTile),
    ]);

    expect(result, equals(RiichiResultType.invalid));
  });

  test('identify seven pair sets', () {
    final RiichiResultType result = identifyRiichiMahjongSets([
      MahjongPairSet(northTile),
      MahjongPairSet(northTile),
      MahjongPairSet(northTile),
      MahjongPairSet(northTile),
      MahjongPairSet(northTile),
      MahjongPairSet(northTile),
      MahjongPairSet(northTile),
    ]);

    expect(result, equals(RiichiResultType.sevenPairs));
  });
}
