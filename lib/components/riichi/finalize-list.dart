import 'package:flutter/material.dart';
import 'package:tanyao/components/tile/set-marker.dart';
import 'package:tanyao/components/tile/tile-input.dart';
import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/tile.dart';

List<Widget> buildRiichiMahjongFinalizeList(
  MahjongHand hand, {
  @required void Function(MahjongHand newHand) onHandUpdate,
}) {
  final MahjongHand cloneHand = hand.clone();

  return [
    TileInputView(
      onPressed: (MahjongTile tile) {
        if (cloneHand.getTotalTileCount() >= 17) {
          return;
        }
        cloneHand.addTile(tile);
        onHandUpdate(cloneHand);
      },
    ),
    MahjongSetMarkerView(
      hand: cloneHand,
    ),
  ];
}
