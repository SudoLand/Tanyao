import 'package:flutter/material.dart';
import 'package:tanyao/entity/mahjong/tile.dart';
import 'package:tanyao/routes/common/tile/tile-text.dart';

class TileButtonView extends StatelessWidget {
  final MahjongTile tile;

  final void Function(MahjongTile tile) onPressed;

  TileButtonView(
    this.tile, {
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: TileTextView(this.tile),
      color: Theme.of(context).buttonColor,
      minWidth: 0.0,
      onPressed: () => this.onPressed(this.tile),
    );
  }
}
