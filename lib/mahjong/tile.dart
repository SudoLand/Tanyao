import 'package:tanyao/mahjong/type.dart';
import 'package:tanyao/util/parse.dart';

class MahjongTile {
  factory MahjongTile.east() {
    return MahjongTile(MahjongType.wind, 1);
  }
  factory MahjongTile.south() {
    return MahjongTile(MahjongType.wind, 2);
  }
  factory MahjongTile.west() {
    return MahjongTile(MahjongType.wind, 3);
  }
  factory MahjongTile.north() {
    return MahjongTile(MahjongType.wind, 4);
  }

  factory MahjongTile.zhong() {
    return MahjongTile(MahjongType.dragon, 1);
  }
  factory MahjongTile.fa() {
    return MahjongTile(MahjongType.dragon, 2);
  }
  factory MahjongTile.bai() {
    return MahjongTile(MahjongType.dragon, 3);
  }

  factory MahjongTile.dot(int value) {
    return MahjongTile(MahjongType.dot, value);
  }
  factory MahjongTile.bamboo(int value) {
    return MahjongTile(MahjongType.bamboo, value);
  }
  factory MahjongTile.character(int value) {
    return MahjongTile(MahjongType.character, value);
  }

  factory MahjongTile.fromString(String target) {
    if (target.length != 2) {
      return null;
    }

    switch (target) {
      case 'ea':
        return MahjongTile.east();
      case 'so':
        return MahjongTile.south();
      case 'we':
        return MahjongTile.west();
      case 'no':
        return MahjongTile.north();
      case 'zh':
        return MahjongTile.zhong();
      case 'fa':
        return MahjongTile.fa();
      case 'ba':
        return MahjongTile.bai();
    }

    final int value = tryParseInt(target[0]);

    if (value == null) {
      return null;
    }

    switch (target[1]) {
      case 'p':
        return MahjongTile.dot(value);
      case 's':
        return MahjongTile.bamboo(value);
      case 'w':
        return MahjongTile.character(value);
    }

    return null;
  }

  static List<MahjongTile> getAvailableDots() {
    final List<MahjongTile> tiles = [];
    for (int i = 1; i <= 9; i++) {
      tiles.add(MahjongTile.dot(i));
    }
    return tiles;
  }

  static List<MahjongTile> getAvailableBamboos() {
    final List<MahjongTile> tiles = [];
    for (int i = 1; i <= 9; i++) {
      tiles.add(MahjongTile.bamboo(i));
    }
    return tiles;
  }

  static List<MahjongTile> getAvailableCharacters() {
    final List<MahjongTile> tiles = [];
    for (int i = 1; i <= 9; i++) {
      tiles.add(MahjongTile.character(i));
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

  bool operator ==(dynamic other) {
    if (!(other is MahjongTile)) {
      return false;
    }

    return this.type == other.type && this.value == other.value;
  }

  bool get isBamboo {
    return this.type == MahjongType.bamboo;
  }

  bool get isDot {
    return this.type == MahjongType.dot;
  }

  bool get isCharacter {
    return this.type == MahjongType.character;
  }

  bool get isWind {
    return this.type == MahjongType.wind;
  }

  bool get isDragon {
    return this.type == MahjongType.dragon;
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

  @override
  int get hashCode {
    return (this.type.index * 10) + this.value;
  }
}
