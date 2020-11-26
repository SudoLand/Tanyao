import 'package:tanyao/mahjong/type.dart';

class MahjongTile {
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
