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

  bool get isBamboo {
    return this.tiles.every((MahjongTile tile) => tile.isBamboo);
  }

  bool get isDot {
    return this.tiles.every((MahjongTile tile) => tile.isDot);
  }

  bool get isCharacter {
    return this.tiles.every((MahjongTile tile) => tile.isCharacter);
  }

  bool get isNumeric {
    return this.tiles.every((MahjongTile tile) => tile.isNumeric);
  }

  bool get isWind {
    return this.tiles.every((MahjongTile tile) => tile.isWind);
  }

  bool get isDragon {
    return this.tiles.every((MahjongTile tile) => tile.isDragon);
  }

  bool get isTerminal {
    return this.tiles.any((MahjongTile tile) => tile.isTerminal);
  }

  bool get isHonor {
    return this.tiles.any((MahjongTile tile) => tile.isHonor);
  }

  bool get isTerminalHonor {
    return this.tiles.any((MahjongTile tile) => tile.isTerminalHonor);
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
