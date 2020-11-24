import 'package:flutter/material.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class GatherStartGameCardView extends StatelessWidget {
  final Icon icon;
  final String gameName;

  GatherStartGameCardView({
    @required this.icon,
    @required this.gameName,
  });

  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Card(
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: this.icon,
              title: coreLocalizations.getText(this.gameName),
              subtitle: coreLocalizations.getText(
                "start-offline-game",
                replacements: {
                  "game": this.gameName,
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
