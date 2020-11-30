import 'package:flutter_test/flutter_test.dart';
import 'package:tanyao/mahjong/tile.dart';

void main() {
  test('can initialize tile with string - east', () {
    final MahjongTile tile = MahjongTile.fromString('ea');
    expect(tile.toString(), equals('east'));
  });

  test('can initialize tile with string - west', () {
    final MahjongTile tile = MahjongTile.fromString('we');
    expect(tile.toString(), equals('west'));
  });

  test('can initialize tile with string - fa', () {
    final MahjongTile tile = MahjongTile.fromString('fa');
    expect(tile.toString(), equals('fa'));
  });

  test('can initialize tile with string - 2p', () {
    final MahjongTile tile = MahjongTile.fromString('2p');
    expect(tile.toString(), equals('2p'));
  });

  test('can initialize tile with string - 9s', () {
    final MahjongTile tile = MahjongTile.fromString('9s');
    expect(tile.toString(), equals('9s'));
  });

  test('can initialize tile with string - unknown', () {
    final MahjongTile tile = MahjongTile.fromString('10s');
    expect(tile, equals(null));
  });

  test('can add with operator + - happy', () {
    final MahjongTile tile = MahjongTile.bamboo(2);
    expect((tile + 1).toString(), equals('3s'));
  });
}
