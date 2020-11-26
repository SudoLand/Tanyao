import 'package:flutter/material.dart';
import 'package:tanyao/entity/mahjong.dart';
import 'package:tanyao/i18n/core/localizations.dart';
import 'package:tanyao/routes/common/tile/tile-input.dart';

class RiichiTileCountPanelView extends StatefulWidget {
  @override
  _RiichiTileCountPanelViewState createState() =>
      _RiichiTileCountPanelViewState();
}

class _RiichiTileCountPanelViewState extends State<RiichiTileCountPanelView> {
  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Column(
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
    );
  }
}
