import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';

class MahjongTripletSet extends MahjongSet {
  final MahjongTile singletonTile;

  MahjongTripletSet(
    this.singletonTile,
  ) : super(
          [
            singletonTile.clone(),
            singletonTile.clone(),
            singletonTile.clone(),
          ],
        );

  bool compareTile(MahjongTile tile) {
    return this.singletonTile == tile;
  }
}
