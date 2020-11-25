import 'package:flutter/material.dart';
import 'package:tanyao/entity/player.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class PlayerPanelView extends StatelessWidget {
  final PlayerEntity player;

  PlayerPanelView({
    @required this.player,
  });

  @override
  Widget build(BuildContext context) {
    final CoreLocalizations coreLocalizations = CoreLocalizations.of(context);

    return Card(
      child: SizedBox(
        width: 150,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text(this.player.name),
            ),
          ],
        ),
      ),
    );
  }
}
