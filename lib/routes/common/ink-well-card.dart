import 'package:flutter/material.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class InkWellCardView extends StatelessWidget {
  final Icon icon;
  final String gameName;
  final void Function() onPress;

  InkWellCardView({
    @required this.icon,
    @required this.gameName,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Card(
      child: InkWell(
        onTap: this.onPress,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: this.icon,
              title: Text(this.gameName),
              subtitle: coreLocalizations.getText("start-offline-game", {
                "game": this.gameName,
              }),
            ),
          ],
        ),
      ),
    );
  }
}
