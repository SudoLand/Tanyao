import 'package:tanyao/entity/hand.dart';
import 'package:tanyao/entity/mahjong/tile.dart';

int pointCalculator(MahjongHand hand) {
  final List<MahjongTile> tiles = hand.getAllTiles();

  for (MahjongTile tile in tiles) {
    tile.toString();
  }

  return 0;
}
