import 'package:tanyao/mahjong/tile.dart';

abstract class MahjongSet {
  final List<MahjongTile> tiles;

  MahjongSet(this.tiles);

  String toString() {
    return tiles.map((MahjongTile tile) => tile.toString()).join(',');
  }
}
