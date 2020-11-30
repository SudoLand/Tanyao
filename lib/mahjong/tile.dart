import 'package:tanyao/mahjong/type.dart';
import 'package:tanyao/util/parse.dart';

class MahjongTile {
  static MahjongTile east = MahjongTile(MahjongType.wind, 1);
  static MahjongTile south = MahjongTile(MahjongType.wind, 2);
  static MahjongTile west = MahjongTile(MahjongType.wind, 3);
  static MahjongTile north = MahjongTile(MahjongType.wind, 4);

  static MahjongTile zhong = MahjongTile(MahjongType.dragon, 1);
  static MahjongTile fa = MahjongTile(MahjongType.dragon, 2);
  static MahjongTile bai = MahjongTile(MahjongType.dragon, 3);

  factory MahjongTile.fromString(String target) {
    if (target.length != 2) {
      return null;
    }

    switch (target) {
      case 'ea':
        return MahjongTile(MahjongType.wind, 1);
      case 'so':
        return MahjongTile(MahjongType.wind, 2);
      case 'we':
        return MahjongTile(MahjongType.wind, 3);
      case 'no':
        return MahjongTile(MahjongType.wind, 4);
      case 'zh':
        return MahjongTile(MahjongType.dragon, 1);
      case 'fa':
        return MahjongTile(MahjongType.dragon, 2);
      case 'ba':
        return MahjongTile(MahjongType.dragon, 3);
    }

    final int value = tryParseInt(target[0]);

    if (value == null) {
      return null;
    }

    switch (target[1]) {
      case 'p':
        return MahjongTile(MahjongType.dot, value);
      case 's':
        return MahjongTile(MahjongType.bamboo, value);
      case 'w':
        return MahjongTile(MahjongType.character, value);
    }

    return null;
  }

  static List<MahjongTile> getAvailableDots() {
    final List<MahjongTile> tiles = [];
    for (int i = 1; i <= 9; i++) {
      tiles.add(MahjongTile(MahjongType.dot, i));
    }
    return tiles;
  }

  static List<MahjongTile> getAvailableBamboos() {
    final List<MahjongTile> tiles = [];
    for (int i = 1; i <= 9; i++) {
      tiles.add(MahjongTile(MahjongType.bamboo, i));
    }
    return tiles;
  }

  static List<MahjongTile> getAvailableCharacters() {
    final List<MahjongTile> tiles = [];
    for (int i = 1; i <= 9; i++) {
      tiles.add(MahjongTile(MahjongType.character, i));
    }
    return tiles;
  }

  static List<MahjongTile> getAvailableWinds() {
    final List<MahjongTile> tiles = [];
    for (int i = 1; i <= 4; i++) {
      tiles.add(MahjongTile(MahjongType.wind, i));
    }
    return tiles;
  }

  static List<MahjongTile> getAvailableDragons() {
    final List<MahjongTile> tiles = [];
    for (int i = 1; i <= 3; i++) {
      tiles.add(MahjongTile(MahjongType.dragon, i));
    }
    return tiles;
  }

  static List<MahjongTile> getAllAvailableTiles() {
    final List<MahjongTile> tiles = [];
    tiles.addAll(MahjongTile.getAvailableDots());
    tiles.addAll(MahjongTile.getAvailableBamboos());
    tiles.addAll(MahjongTile.getAvailableCharacters());
    tiles.addAll(MahjongTile.getAvailableWinds());
    tiles.addAll(MahjongTile.getAvailableDragons());
    return tiles;
  }

  MahjongType type;
  int value;

  MahjongTile(this.type, this.value);

  MahjongTile operator +(int offset) {
    final int resultValue = this.value + offset;

    if (resultValue > 9) {
      throw Exception("Overflow");
    }

    return MahjongTile(this.type, resultValue);
  }

  String toString() {
    switch (this.type) {
      case MahjongType.bamboo:
        return "${this.value}s";
      case MahjongType.character:
        return "${this.value}m";
      case MahjongType.dot:
        return "${this.value}p";
      case MahjongType.dragon:
        switch (this.value) {
          case 1:
            return "zhong";
          case 2:
            return "fa";
          case 3:
            return "bai";
        }
        return "unknown";
      case MahjongType.wind:
        switch (this.value) {
          case 1:
            return "east";
          case 2:
            return "south";
          case 3:
            return "west";
          case 4:
            return "north";
        }
        return "unknown";
      case MahjongType.flower:
        return "flower";
    }
    return "unknown";
  }

  MahjongTile clone() {
    return MahjongTile(this.type, this.value);
  }
}
