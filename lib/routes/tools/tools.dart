import 'package:flutter/material.dart';
import 'package:tanyao/components/ink-well-card.dart';
import 'package:tanyao/i18n/core/localizations.dart';
import 'package:tanyao/routes/tools/point-calculator/riichi-point-calculator.dart';
import 'package:tanyao/routes/tools/tile-input-tool.dart';

class ToolsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Scaffold(
      body: ListView(
        children: [
          InkWellCardView(
            onPress: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TileInputToolView(),
                ),
              );
            },
            icon: Icon(Icons.timelapse),
            title: coreLocalizations.getText("tile-input-tool"),
            subtitle: coreLocalizations.getText(
              "start-tool",
              replacements: {
                "tool": coreLocalizations.getString("tile-input-tool"),
              },
            ),
          ),
          InkWellCardView(
            onPress: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RiichiPointCalculatorToolView(),
                ),
              );
            },
            icon: Icon(Icons.timelapse),
            title: coreLocalizations
                .getText("point-calculator-tool!1", replacements: {
              "game": coreLocalizations.getString("riichi-mahjong"),
            }),
            subtitle: coreLocalizations.getText(
              "start-tool",
              replacements: {
                "tool": coreLocalizations
                    .getString("point-calculator-tool!1", replacements: {
                  "game": coreLocalizations.getString("riichi-mahjong"),
                }),
              },
            ),
          ),
        ],
      ),
    );
  }
}
