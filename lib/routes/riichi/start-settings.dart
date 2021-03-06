import 'package:flutter/material.dart';
import 'package:tanyao/i18n/core/localizations.dart';
import 'package:tanyao/routes/riichi/game.dart';

class RiichiStartSettingsView extends StatefulWidget {
  @override
  _RiichiStartSettingsViewState createState() =>
      _RiichiStartSettingsViewState();
}

class _RiichiStartSettingsViewState extends State<RiichiStartSettingsView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: coreLocalizations.getText(
          "start-offline-game!1",
          replacements: {
            "game": coreLocalizations.getString("riichi-mahjong"),
          },
        ),
      ),
      body: Form(
        key: this._formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: FlatButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => RiichiGameView(),
                      ),
                    );
                  }
                },
                child: coreLocalizations.getText("start-game"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
