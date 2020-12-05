import 'package:flutter/material.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class RiichiMahjongHandInputNavigatorSelectResultView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: RaisedButton(
            child: coreLocalizations.getText("next-step!1", replacements: {
              "route": coreLocalizations.getString("set-markers"),
            }),
            onPressed: () {
              Navigator.of(context).pushNamed(
                'riichi-input-hand-navigator/#/set-markers',
              );
            },
          ),
        ),
      ],
    );
  }
}
