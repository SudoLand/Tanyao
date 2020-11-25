import 'package:flutter/material.dart';
import 'package:tanyao/entity/hand.dart';
import 'package:tanyao/entity/mahjong.dart';
import 'package:tanyao/routes/common/tile/tile-text.dart';

class TileHandView extends StatelessWidget {
  final MahjongHand hand;

  TileHandView(this.hand);

  @override
  Widget build(BuildContext context) {
    final List<MahjongTile> tiles = this.hand.getAllTiles();

    return Wrap(
      children: tiles
          .map(
            (MahjongTile tile) => Card(
              margin: const EdgeInsets.all(1.0),
              child: Container(
                padding: const EdgeInsets.all(5.0),
                child: TileTextView(tile),
              ),
            ),
          )
          .toList(),
    );
  }
}
