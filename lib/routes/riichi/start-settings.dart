import 'package:flutter/material.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class RiichiStartSettingsView extends StatefulWidget {
  @override
  _RiichiStartSettingsViewState createState() =>
      _RiichiStartSettingsViewState();
}

class _RiichiStartSettingsViewState extends State<RiichiStartSettingsView> {
  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: coreLocalizations.getText(
          "start-offline-game",
          replacements: {
            "game": "riichi-mahjong",
          },
        ),
      ),
    );
  }
}
