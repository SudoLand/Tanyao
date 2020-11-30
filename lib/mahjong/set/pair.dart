import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';

class MahjongPairSet extends MahjongSet {
  final MahjongTile singletonTile;

  MahjongPairSet(
    this.singletonTile,
  ) : super(
          [
            singletonTile.clone(),
            singletonTile.clone(),
          ],
        );

  bool compareTile(MahjongTile tile) {
    return this.singletonTile == tile;
  }
}
