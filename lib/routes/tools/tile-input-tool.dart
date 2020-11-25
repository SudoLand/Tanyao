import 'package:flutter/material.dart';
import 'package:tanyao/entity/hand.dart';
import 'package:tanyao/i18n/core/localizations.dart';
import 'package:tanyao/routes/common/tile/tile-input.dart';

class TileInputToolView extends StatefulWidget {
  @override
  _TileInputToolViewState createState() => _TileInputToolViewState();
}

class _TileInputToolViewState extends State<TileInputToolView> {
  MahjongHand _hand = MahjongHand();

  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: coreLocalizations.getText("tile-input-tool"),
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
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: TileInputView(),
            ),
          ),
        ],
      ),
    );
  }
}
