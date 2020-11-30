import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';

class MahjongTripletSet extends MahjongSet {
  MahjongTripletSet(
    MahjongTile tile,
  ) : super(
          [
            tile.clone(),
            tile.clone(),
            tile.clone(),
          ],
        );

  bool compareTile(MahjongTile tile) {
    return true;
  }
}
