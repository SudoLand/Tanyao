import 'package:flutter/material.dart';
import 'package:tanyao/entity/mahjong.dart';
import 'package:tanyao/i18n/core/localizations.dart';
import 'package:tanyao/routes/common/side-dialog.dart';
import 'package:tanyao/routes/common/tile/tile-input.dart';

void showTileCountDialog(
  BuildContext context, {
  @required int quarterTurns,
}) {
  final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

  showSideDialog(
    context,
    quarterTurns: quarterTurns,
    width: 400,
    height: 250,
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.face),
          title: coreLocalizations.getText("result"),
        ),
        // ListTile(
        //   title: TileHandView(this._hand),
        // ),
        TileInputView(
          onPressed: (MahjongTile tile) {},
        ),
      ],
    ),
  );
}
