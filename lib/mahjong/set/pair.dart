import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';

class MahjongPairSet extends MahjongSet {
  MahjongPairSet(
    MahjongTile tile,
  ) : super(
          [
            tile.clone(),
            tile.clone(),
          ],
        );
}
