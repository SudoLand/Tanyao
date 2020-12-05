import 'package:flutter/material.dart';
import 'package:tanyao/components/riichi/input-hand-navigator.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class RiichiPointCalculatorToolView extends StatefulWidget {
  @override
  _RiichiPointCalculatorToolViewState createState() =>
      _RiichiPointCalculatorToolViewState();
}

class _RiichiPointCalculatorToolViewState
    extends State<RiichiPointCalculatorToolView> {
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
            margin: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: RiichiMahjongHandInputNavigatorView(),
            ),
          ),
        ],
      ),
    );
  }
}
