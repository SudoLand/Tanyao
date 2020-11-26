import 'package:flutter/material.dart';
import 'package:tanyao/entity/hand.dart';
import 'package:tanyao/mahjong/tile.dart';
import 'package:tanyao/i18n/core/localizations.dart';
import 'package:tanyao/routes/common/tile/tile-hand.dart';
import 'package:tanyao/routes/common/tile/tile-input.dart';

class RiichiTileCountPanelView extends StatefulWidget {
  @override
  _RiichiTileCountPanelViewState createState() =>
      _RiichiTileCountPanelViewState();
}

class _RiichiTileCountPanelViewState extends State<RiichiTileCountPanelView> {
  final MahjongHand _hand = MahjongHand();

  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.face),
          title: coreLocalizations.getText("result"),
        ),
        Container(
          margin: const EdgeInsets.all(5.0),
          height: 70,
          child: TileHandView(
            this._hand,
            onRemovePressed: (MahjongTile tile) {
              this._hand.removeTile(tile);
              this.setState(() {});
            },
          ),
        ),
        TileInputView(
          onPressed: (MahjongTile tile) {
            this._hand.addTile(tile);
            this.setState(() {});
          },
        ),
      ],
    );
  }
}
