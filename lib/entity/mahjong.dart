enum MahjongType {
  flower,
  dragon,
  wind,
  dot,
  bamboo,
  character,
}

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
}
