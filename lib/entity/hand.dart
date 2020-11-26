import 'package:tanyao/entity/mahjong/tile.dart';

class MahjongHand {
  final Map<String, int> handMap = Map<String, int>();
  final Set<String> extras = Set<String>();

  MahjongHand() {
    this.reset();
  }

  void reset() {
    List<MahjongTile> tiles = MahjongTile.getAllAvailableTiles();
    for (MahjongTile tile in tiles) {
      this.handMap[tile.toString()] = 0;
    }

    this.extras.clear();
  }

  List<MahjongTile> getDots() {
    return this._mapTiles(
      MahjongTile.getAvailableDots(),
    );
  }

  List<MahjongTile> getBamboos() {
    return this._mapTiles(
      MahjongTile.getAvailableBamboos(),
    );
  }

  List<MahjongTile> getCharacters() {
    return this._mapTiles(
      MahjongTile.getAvailableCharacters(),
    );
  }

  List<MahjongTile> getWinds() {
    return this._mapTiles(
      MahjongTile.getAvailableWinds(),
    );
  }

  List<MahjongTile> getDragons() {
    return this._mapTiles(
      MahjongTile.getAvailableDragons(),
    );
  }

  List<MahjongTile> getAllTiles() {
    final List<MahjongTile> tiles = [];
    tiles.addAll(this.getDots());
    tiles.addAll(this.getBamboos());
    tiles.addAll(this.getCharacters());
    tiles.addAll(this.getWinds());
    tiles.addAll(this.getDragons());
    return tiles;
  }

  void addTile(MahjongTile tile) {
    int value = this.handMap[tile.toString()];

    if (value >= 4) {
      return;
    }
    this.handMap[tile.toString()]++;
  }

  void removeTile(MahjongTile tile) {
    int value = this.handMap[tile.toString()];

    if (value <= 0) {
      return;
    }

    this.handMap[tile.toString()]--;
  }

  List<MahjongTile> _mapTiles(List<MahjongTile> targetTiles) {
    final List<MahjongTile> results = [];

    for (MahjongTile targetTile in targetTiles) {
      for (int i = 0; i < this.handMap[targetTile.toString()]; i++) {
        results.add(targetTile.clone());
      }
    }

    return results;
  }
}
