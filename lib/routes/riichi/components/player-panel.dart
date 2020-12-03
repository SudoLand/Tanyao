import 'package:flutter/material.dart';
import 'package:tanyao/components/tile-count/show-tile-count-dialog.dart';
import 'package:tanyao/entity/player.dart';
import 'package:tanyao/i18n/core/localizations.dart';

class PlayerPanelView extends StatelessWidget {
  final int quarterTurns;
  final PlayerEntity player;

  PlayerPanelView({
    @required this.quarterTurns,
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
              leading: ClipOval(
                child: Material(
                  color: Theme.of(context).primaryColor,
                  child: InkWell(
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Center(
                        child: coreLocalizations.getText(
                          "he-win",
                          style: TextStyle(
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      showTileCountDialog(
                        context,
                        quarterTurns: this.quarterTurns,
                      );
                    },
                  ),
                ),
              ),
              title: Text(this.player.name),
            ),
          ],
        ),
      ),
    );
  }
}
