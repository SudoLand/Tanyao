import 'package:flutter/material.dart';
import 'package:tanyao/components/tile/tile-hand.dart';
import 'package:tanyao/components/tile/tile-input.dart';
import 'package:tanyao/i18n/core/localizations.dart';
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
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    final MahjongHand cloneHand = this.hand.clone();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
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
          child: coreLocalizations.getText("next-step!1", replacements: {
            "route": coreLocalizations.getString("select-result"),
          }),
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
