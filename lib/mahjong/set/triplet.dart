import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';

class MahjongTripletSet extends MahjongSet {
  final MahjongTile singletonTile;
  final bool concealed;
  final bool kan;

  MahjongTripletSet(
    this.singletonTile, {
    this.concealed = true,
    this.kan = false,
  }) : super(
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
