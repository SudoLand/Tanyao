import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/tile.dart';

int pointCalculator(MahjongHand hand) {
  final List<MahjongTile> tiles = hand.getAllTiles();

  for (MahjongTile tile in tiles) {
    tile.toString();
  }

  return 0;
}
