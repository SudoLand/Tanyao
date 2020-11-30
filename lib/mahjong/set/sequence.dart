import 'package:tanyao/mahjong/set/base.dart';
import 'package:tanyao/mahjong/tile.dart';

class MahjongSequenceSet extends MahjongSet {
  final bool concealed;

  MahjongSequenceSet(
    List<MahjongTile> tiles, {
    this.concealed = false,
  }) : super(tiles);
}
