import 'package:flutter/material.dart';
import 'package:tanyao/components/side-dialog.dart';
import 'package:tanyao/components/tile-count/riichi-tile-count-panel.dart';

void showTileCountDialog(
  BuildContext context, {
  @required int quarterTurns,
}) {
  showSideDialog(
    context,
    quarterTurns: quarterTurns,
    width: 425,
    height: 300,
    child: RiichiTileCountPanelView(),
  );
}
