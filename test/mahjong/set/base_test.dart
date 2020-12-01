import 'package:flutter_test/flutter_test.dart';
import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';

class MahjongMockSet extends MahjongSet {
  MahjongMockSet(
    List<MahjongTile> tiles,
  ) : super(tiles);
}

void main() {
  test('can be identify with is', () {
    final MahjongMockSet mockSet = MahjongMockSet([]);

    expect(mockSet is MahjongSet, equals(true));
  });

  test('can compare two mock set type - happy path', () {
    final MahjongMockSet base = MahjongMockSet([
      MahjongTile.dot(1),
      MahjongTile.dot(2),
      MahjongTile.dot(3),
    ]);

    final MahjongMockSet target = MahjongMockSet([
      MahjongTile.dot(1),
      MahjongTile.dot(2),
      MahjongTile.dot(3),
    ]);

    expect(base, equals(target));
  });

  test('can compare two mock set type - sad path', () {
    final MahjongMockSet base = MahjongMockSet([
      MahjongTile.dot(1),
      MahjongTile.dot(2),
      MahjongTile.dot(3),
    ]);

    final MahjongMockSet target = MahjongMockSet([
      MahjongTile.dot(3),
      MahjongTile.dot(1),
      MahjongTile.dot(2),
    ]);

    expect(base, isNot(equals(target)));
  });
}
