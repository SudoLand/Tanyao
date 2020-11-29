import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';
import 'package:tanyao/mahjong/type.dart';

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

  int getTotalTileCount() {
    int total = 0;
    for (String key in this.handMap.keys) {
      total += this.handMap[key];
    }
    return total;
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

  List<MahjongTile> getTilesByType(MahjongType type) {
    switch (type) {
      case MahjongType.bamboo:
        return this.getBamboos();
      case MahjongType.character:
        return this.getCharacters();
      case MahjongType.dot:
        return this.getDots();
      case MahjongType.dragon:
        return this.getDragons();
      case MahjongType.wind:
        return this.getWinds();
      case MahjongType.flower:
        return [];
    }
    return [];
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

  void removeSet(MahjongSet mahjongSet) {
    for (MahjongTile tile in mahjongSet.tiles) {
      this.removeTile(tile);
    }
  }

  int getTileCount(MahjongTile tile) {
    return this.handMap[tile.toString()];
  }

  MahjongHand clone() {
    final MahjongHand tempHand = MahjongHand();
    tempHand.handMap.addAll(this.handMap);
    tempHand.extras.addAll(this.extras);

    return tempHand;
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
