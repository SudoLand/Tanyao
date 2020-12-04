import 'package:flutter/material.dart';
import 'package:tanyao/components/tile/tile-hand.dart';
import 'package:tanyao/components/tile/tile-input.dart';
import 'package:tanyao/i18n/core/localizations.dart';
import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/tile.dart';

class RiichiMahjongHandInputView extends StatefulWidget {
  @override
  _RiichiMahjongHandInputViewState createState() =>
      _RiichiMahjongHandInputViewState();
}

class _RiichiMahjongHandInputViewState
    extends State<RiichiMahjongHandInputView> {
  final MahjongHand _hand = MahjongHand();
  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Container(
      child: Column(
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
      ),
    );
  }
}
