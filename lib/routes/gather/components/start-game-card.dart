import 'package:flutter/material.dart';
import 'package:tanyao/components/ink-well-card.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class GatherStartGameCardView extends StatelessWidget {
  final Icon icon;
  final String gameName;
  final void Function() onPress;

  GatherStartGameCardView({
    @required this.icon,
    @required this.gameName,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return InkWellCardView(
      onPress: this.onPress,
      icon: this.icon,
      title: Text(this.gameName),
      subtitle: coreLocalizations.getText(
        "start-offline-game!1",
        replacements: {
          "game": this.gameName,
        },
      ),
    );
  }
}
