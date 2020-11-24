import 'package:flutter/material.dart';
import 'package:tanyao/i18n/core/localizations.dart';
import 'package:tanyao/routes/common/ink-well-card.dart';
import 'package:tanyao/routes/riichi/start-settings.dart';

class GatherView extends StatelessWidget {
  GatherView();

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
                  builder: (context) => RiichiStartSettingsView(),
                ),
              );
            },
            icon: Icon(Icons.album),
            gameName: coreLocalizations.getString("riichi-mahjong"),
          ),
          InkWellCardView(
            onPress: () {},
            icon: Icon(Icons.album),
            gameName: coreLocalizations.getString("competition-mahjong"),
          ),
        ],
      ),
    );
  }
}
