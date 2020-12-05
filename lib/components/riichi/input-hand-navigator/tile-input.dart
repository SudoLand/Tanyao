import 'package:flutter/material.dart';
import 'package:tanyao/components/tile/tile-hand.dart';
import 'package:tanyao/components/tile/tile-input.dart';
import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/tile.dart';

class RiichiMahjongHandInputNavigatorTileInputView extends StatelessWidget {
  final MahjongHand hand;
  final void Function(MahjongHand newHand) onHandUpdate;

  RiichiMahjongHandInputNavigatorTileInputView({
    @required this.hand,
    @required this.onHandUpdate,
  });

  @override
  Widget build(BuildContext context) {
    final MahjongHand cloneHand = this.hand.clone();

    return Column(
      children: [
        TileHandView(
          cloneHand,
          onRemovePressed: (MahjongTile tile) {
            cloneHand.removeTile(tile);
          },
        ),
        SizedBox(
          height: 10.0,
        ),
        TileInputView(
          onPressed: (MahjongTile tile) {
            if (cloneHand.getTotalTileCount() >= 14) {
              return;
            }
            cloneHand.addTile(tile);
            this.onHandUpdate(cloneHand);
          },
        ),
        SizedBox(
          height: 10.0,
        ),
        RaisedButton(
          child: Text("123"),
          onPressed: () {
            Navigator.of(context).pushNamed(
              'riichi-input-hand-navigator/#/select-result',
            );
          },
        )
      ],
    );
  }
}
