import 'package:flutter/material.dart';
import 'package:tanyao/entity/hand.dart';
import 'package:tanyao/entity/mahjong.dart';

class TileHandView extends StatelessWidget {
  final MahjongHand hand;

  TileHandView(this.hand);

  @override
  Widget build(BuildContext context) {
    final List<MahjongTile> tiles = this.hand.getAllTiles();

    return Row(
      children: tiles
          .map(
            (MahjongTile tile) => Text(tile.toString()),
          )
          .toList(),
    );
  }
}
