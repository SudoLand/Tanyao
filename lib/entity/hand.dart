import 'package:tanyao/entity/mahjong.dart';

class MahjongHand {
  final Map<String, int> handMap = Map<String, int>();

  MahjongHand() {
    this.reset();
  }

  void reset() {
    List<MahjongTile> tiles = MahjongTile.getAllAvailableTiles();
    for (MahjongTile tile in tiles) {
      this.handMap[tile.toString()] = 0;
    }
  }
}
