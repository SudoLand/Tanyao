import 'package:flutter/material.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class GatherView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Scaffold(
      body: ListView(
        children: [
          Card(
            child: InkWell(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.album),
                    title: coreLocalizations.getText("riichi-mahjong"),
                    subtitle: coreLocalizations.getText(
                      "start-offline-game",
                      replacements: {
                        "game": "riichi-mahjong",
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
