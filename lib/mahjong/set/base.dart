import 'package:tanyao/mahjong/tile.dart';
import 'package:tanyao/util/parse.dart';

abstract class MahjongSet {
  final List<MahjongTile> tiles;

  MahjongSet(this.tiles);

  bool operator ==(dynamic other) {
    if (!(other is MahjongSet)) {
      return false;
    }

    return this.hashCode == other.hashCode;
  }

  String toString() {
    return tiles.map((MahjongTile tile) => tile.toString()).join(',');
  }

  @override
  int get hashCode {
    return tryParseInt(this.tiles.map((MahjongTile tile) {
      return tile.hashCode;
    }).join());
  }
}
