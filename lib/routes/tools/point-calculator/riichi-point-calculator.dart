import 'package:flutter/material.dart';
import 'package:tanyao/components/tile/tile-hand.dart';
import 'package:tanyao/components/tile/tile-input.dart';
import 'package:tanyao/i18n/core/localizations.dart';
import 'package:tanyao/mahjong/hand.dart';
import 'package:tanyao/mahjong/tile.dart';

class RiichiPointCalculatorToolView extends StatefulWidget {
  @override
  _RiichiPointCalculatorToolViewState createState() =>
      _RiichiPointCalculatorToolViewState();
}

class _RiichiPointCalculatorToolViewState
    extends State<RiichiPointCalculatorToolView> {
  final MahjongHand _hand = MahjongHand();

  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title:
            coreLocalizations.getText("point-calculator-tool!1", replacements: {
          "game": coreLocalizations.getString("riichi-mahjong"),
        }),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.only(
              top: 10.0,
              left: 10.0,
              right: 10.0,
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.face),
                  title: coreLocalizations.getText("result"),
                ),
                ListTile(
                  title: TileHandView(this._hand),
                ),
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: TileInputView(
                onPressed: (MahjongTile tile) {
                  this._hand.addTile(tile);
                  this.setState(() {});
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
