import 'package:flutter/material.dart';
import 'package:tanyao/entity/mahjong.dart';
import 'package:tanyao/routes/common/side-dialog.dart';
import 'package:tanyao/routes/common/tile/tile-input.dart';

void showTileCountDialog(
  BuildContext context, {
  @required int quarterTurns,
}) {
  showSideDialog(
    context,
    quarterTurns: quarterTurns,
    child: Column(
      children: [
        TileInputView(
          onPressed: (MahjongTile tile) {},
        ),
      ],
    ),
  );
}
